; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_check_mac_link_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_check_mac_link_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_LINKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"LINKS changed from %08X to %08X\0A\00", align 1
@IXGBE_LINK_UP_TIME = common dso_local global i64 0, align 8
@IXGBE_LINKS_UP = common dso_local global i64 0, align 8
@IXGBE_LINKS_SPEED_82599 = common dso_local global i64 0, align 8
@IXGBE_LINKS_SPEED_10G_82599 = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINKS_SPEED_1G_82599 = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINKS_SPEED_100_82599 = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_check_mac_link_generic(%struct.ixgbe_hw* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %13 = load i32, i32* @IXGBE_LINKS, align 4
  %14 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %12, i32 %13)
  store i64 %14, i64* %10, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %16 = load i32, i32* @IXGBE_LINKS, align 4
  %17 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %15, i32 %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @hw_dbg(%struct.ixgbe_hw* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %24)
  br label %26

26:                                               ; preds = %21, %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  store i64 0, i64* %11, align 8
  br label %30

30:                                               ; preds = %48, %29
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @IXGBE_LINK_UP_TIME, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @IXGBE_LINKS_UP, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32*, i32** %7, align 8
  store i32 1, i32* %40, align 4
  br label %51

41:                                               ; preds = %34
  %42 = load i32*, i32** %7, align 8
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %41
  %44 = call i32 @msleep(i32 100)
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %46 = load i32, i32* @IXGBE_LINKS, align 4
  %47 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %45, i32 %46)
  store i64 %47, i64* %9, align 8
  br label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %11, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %11, align 8
  br label %30

51:                                               ; preds = %39, %30
  br label %62

52:                                               ; preds = %26
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @IXGBE_LINKS_UP, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32*, i32** %7, align 8
  store i32 1, i32* %58, align 4
  br label %61

59:                                               ; preds = %52
  %60 = load i32*, i32** %7, align 8
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %59, %57
  br label %62

62:                                               ; preds = %61, %51
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @IXGBE_LINKS_SPEED_82599, align 8
  %65 = and i64 %63, %64
  %66 = load i64, i64* @IXGBE_LINKS_SPEED_10G_82599, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %70 = load i32*, i32** %6, align 8
  store i32 %69, i32* %70, align 4
  br label %94

71:                                               ; preds = %62
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @IXGBE_LINKS_SPEED_82599, align 8
  %74 = and i64 %72, %73
  %75 = load i64, i64* @IXGBE_LINKS_SPEED_1G_82599, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %79 = load i32*, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  br label %93

80:                                               ; preds = %71
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @IXGBE_LINKS_SPEED_82599, align 8
  %83 = and i64 %81, %82
  %84 = load i64, i64* @IXGBE_LINKS_SPEED_100_82599, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %88 = load i32*, i32** %6, align 8
  store i32 %87, i32* %88, align 4
  br label %92

89:                                               ; preds = %80
  %90 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %91 = load i32*, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %86
  br label %93

93:                                               ; preds = %92, %77
  br label %94

94:                                               ; preds = %93, %68
  ret i32 0
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, i64, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
