; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_umem.c_set_userbit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_umem.c_set_userbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardinfo = type { i64 }

@MEMCTRLCMD_LEDCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardinfo*, i32, i8)* @set_userbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_userbit(%struct.cardinfo* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.cardinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.cardinfo* %0, %struct.cardinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %8 = load %struct.cardinfo*, %struct.cardinfo** %4, align 8
  %9 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MEMCTRLCMD_LEDCTRL, align 8
  %12 = add nsw i64 %10, %11
  %13 = call zeroext i8 @readb(i64 %12)
  store i8 %13, i8* %7, align 1
  %14 = load i8, i8* %6, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i8, i8* %7, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %19, %17
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %7, align 1
  br label %29

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = xor i32 %23, -1
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, %24
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %7, align 1
  br label %29

29:                                               ; preds = %22, %16
  %30 = load i8, i8* %7, align 1
  %31 = load %struct.cardinfo*, %struct.cardinfo** %4, align 8
  %32 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MEMCTRLCMD_LEDCTRL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writeb(i8 zeroext %30, i64 %35)
  ret i32 0
}

declare dso_local zeroext i8 @readb(i64) #1

declare dso_local i32 @writeb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
