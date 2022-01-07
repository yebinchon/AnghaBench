; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_t4_read_flash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_t4_read_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SF_RD_DATA_FAST = common dso_local global i32 0, align 4
@SF_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32, i32*, i32)* @t4_read_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_read_flash(%struct.adapter* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = zext i32 %13 to i64
  %15 = load i32, i32* %9, align 4
  %16 = zext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = add i64 %14, %17
  %19 = load %struct.adapter*, %struct.adapter** %7, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = zext i32 %22 to i64
  %24 = icmp ugt i64 %18, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 3
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %5
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %88

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @swab32(i32 %33)
  %35 = load i32, i32* @SF_RD_DATA_FAST, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.adapter*, %struct.adapter** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @sf1_write(%struct.adapter* %37, i32 4, i32 1, i32 0, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = load %struct.adapter*, %struct.adapter** %7, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @sf1_read(%struct.adapter* %42, i32 1, i32 1, i32 0, i32* %43)
  store i32 %44, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %32
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %6, align 4
  br label %88

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %82, %48
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %49
  %53 = load %struct.adapter*, %struct.adapter** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = icmp ugt i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 1
  %59 = zext i1 %58 to i32
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @sf1_read(%struct.adapter* %53, i32 4, i32 %56, i32 %59, i32* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %68

64:                                               ; preds = %52
  %65 = load %struct.adapter*, %struct.adapter** %7, align 8
  %66 = load i32, i32* @SF_OP, align 4
  %67 = call i32 @t4_write_reg(%struct.adapter* %65, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %64, %52
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %6, align 4
  br label %88

73:                                               ; preds = %68
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @htonl(i32 %78)
  %80 = load i32*, i32** %10, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %73
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = add i32 %83, -1
  store i32 %84, i32* %9, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %10, align 8
  br label %49

87:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %71, %46, %29
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @sf1_write(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @sf1_read(%struct.adapter*, i32, i32, i32, i32*) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
