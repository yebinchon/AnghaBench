; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_enable_alt_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_enable_alt_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NIU_FLAGS_XMAC = common dso_local global i32 0, align 4
@XMAC_ADDR_CMPEN = common dso_local global i64 0, align 8
@BMAC_ADDR_CMPEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32, i32)* @niu_enable_alt_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_enable_alt_mac(%struct.niu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.niu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.niu*, %struct.niu** %5, align 8
  %13 = call i32 @niu_num_alt_addr(%struct.niu* %12)
  %14 = icmp sge i32 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %52

18:                                               ; preds = %3
  %19 = load %struct.niu*, %struct.niu** %5, align 8
  %20 = getelementptr inbounds %struct.niu, %struct.niu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NIU_FLAGS_XMAC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i64, i64* @XMAC_ADDR_CMPEN, align 8
  store i64 %26, i64* %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 1, %27
  store i32 %28, i32* %10, align 4
  br label %34

29:                                               ; preds = %18
  %30 = load i64, i64* @BMAC_ADDR_CMPEN, align 8
  store i64 %30, i64* %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  %33 = shl i32 1, %32
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @nr64_mac(i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %48

43:                                               ; preds = %34
  %44 = load i32, i32* %10, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @nw64_mac(i64 %49, i32 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @niu_num_alt_addr(%struct.niu*) #1

declare dso_local i32 @nr64_mac(i64) #1

declare dso_local i32 @nw64_mac(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
