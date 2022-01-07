; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8842.c_ks8842_read_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8842.c_ks8842_read_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks8842_adapter = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@REG_MARL = common dso_local global i64 0, align 8
@REG_MACAR1 = common dso_local global i32 0, align 4
@REG_MARM = common dso_local global i64 0, align 8
@REG_MACAR2 = common dso_local global i32 0, align 4
@REG_MARH = common dso_local global i64 0, align 8
@REG_MACAR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks8842_adapter*, i32*)* @ks8842_read_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8842_read_mac_addr(%struct.ks8842_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.ks8842_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ks8842_adapter* %0, %struct.ks8842_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %25, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @ETH_ALEN, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %3, align 8
  %13 = load i64, i64* @REG_MARL, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = call i32 @ks8842_read8(%struct.ks8842_adapter* %12, i32 2, i64 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %19, %20
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %18, i64 %23
  store i32 %17, i32* %24, align 4
  br label %25

25:                                               ; preds = %11
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %7

28:                                               ; preds = %7
  %29 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %3, align 8
  %30 = load i64, i64* @REG_MARL, align 8
  %31 = call i32 @ks8842_read16(%struct.ks8842_adapter* %29, i32 2, i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @REG_MACAR1, align 4
  %35 = call i32 @ks8842_write16(%struct.ks8842_adapter* %32, i32 39, i32 %33, i32 %34)
  %36 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %3, align 8
  %37 = load i64, i64* @REG_MARM, align 8
  %38 = call i32 @ks8842_read16(%struct.ks8842_adapter* %36, i32 2, i64 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @REG_MACAR2, align 4
  %42 = call i32 @ks8842_write16(%struct.ks8842_adapter* %39, i32 39, i32 %40, i32 %41)
  %43 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %3, align 8
  %44 = load i64, i64* @REG_MARH, align 8
  %45 = call i32 @ks8842_read16(%struct.ks8842_adapter* %43, i32 2, i64 %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @REG_MACAR3, align 4
  %49 = call i32 @ks8842_write16(%struct.ks8842_adapter* %46, i32 39, i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @ks8842_read8(%struct.ks8842_adapter*, i32, i64) #1

declare dso_local i32 @ks8842_read16(%struct.ks8842_adapter*, i32, i64) #1

declare dso_local i32 @ks8842_write16(%struct.ks8842_adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
