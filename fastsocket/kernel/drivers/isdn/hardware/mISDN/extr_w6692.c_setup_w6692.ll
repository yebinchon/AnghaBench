; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_setup_w6692.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_setup_w6692.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_hw = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"%s: config port %x-%x already in use\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@W_ISTA = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_HW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%s ISTA=%02x\0A\00", align 1
@W_IMASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"%s IMASK=%02x\0A\00", align 1
@W_D_EXIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"%s D_EXIR=%02x\0A\00", align 1
@W_D_EXIM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"%s D_EXIM=%02x\0A\00", align 1
@W_D_RSTA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"%s D_RSTA=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w6692_hw*)* @setup_w6692 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_w6692(%struct.w6692_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w6692_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.w6692_hw* %0, %struct.w6692_hw** %3, align 8
  %5 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %6 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %9 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @request_region(i64 %7, i32 256, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %1
  %14 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %15 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %18 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %21 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 255
  %24 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %19, i64 %23)
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %117

27:                                               ; preds = %1
  %28 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %29 = call i32 @W6692Version(%struct.w6692_hw* %28)
  %30 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %31 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %34 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %32, i64* %37, align 8
  %38 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %39 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 64
  %42 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %43 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 %41, i64* %46, align 8
  %47 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %48 = load i32, i32* @W_ISTA, align 4
  %49 = call i32 @ReadW6692(%struct.w6692_hw* %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @debug, align 4
  %51 = load i32, i32* @DEBUG_HW, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %27
  %55 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %56 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @pr_notice(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %27
  %61 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %62 = load i32, i32* @W_IMASK, align 4
  %63 = call i32 @ReadW6692(%struct.w6692_hw* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @debug, align 4
  %65 = load i32, i32* @DEBUG_HW, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %70 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @pr_notice(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %60
  %75 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %76 = load i32, i32* @W_D_EXIR, align 4
  %77 = call i32 @ReadW6692(%struct.w6692_hw* %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* @debug, align 4
  %79 = load i32, i32* @DEBUG_HW, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %84 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @pr_notice(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %82, %74
  %89 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %90 = load i32, i32* @W_D_EXIM, align 4
  %91 = call i32 @ReadW6692(%struct.w6692_hw* %89, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* @debug, align 4
  %93 = load i32, i32* @DEBUG_HW, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %98 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @pr_notice(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %96, %88
  %103 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %104 = load i32, i32* @W_D_RSTA, align 4
  %105 = call i32 @ReadW6692(%struct.w6692_hw* %103, i32 %104)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* @debug, align 4
  %107 = load i32, i32* @DEBUG_HW, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %112 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @pr_notice(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %110, %102
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %13
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @request_region(i64, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i64, i64) #1

declare dso_local i32 @W6692Version(%struct.w6692_hw*) #1

declare dso_local i32 @ReadW6692(%struct.w6692_hw*, i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
