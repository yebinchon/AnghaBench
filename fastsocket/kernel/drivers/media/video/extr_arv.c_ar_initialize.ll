; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_arv.c_ar_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_arv.c_ar_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32 }
%struct.ar_device = type { i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"ar_initialize:\0A\00", align 1
@ARVCR0 = common dso_local global i32 0, align 4
@ARVCR0_RST = common dso_local global i64 0, align 8
@ARINTSEL_INT3 = common dso_local global i64 0, align 8
@ARINTSEL = common dso_local global i32 0, align 4
@AR_SIZE_QVGA = common dso_local global i64 0, align 8
@ARVCR1_QVGA = common dso_local global i64 0, align 8
@AR_MODE_NORMAL = common dso_local global i64 0, align 8
@ARVCR1_NORMAL = common dso_local global i64 0, align 8
@ARVCR1 = common dso_local global i32 0, align 4
@ARVCR0_VDS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"arv: Initializing \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.video_device*)* @ar_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar_initialize(%struct.video_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.ar_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.video_device* %0, %struct.video_device** %3, align 8
  %8 = load %struct.video_device*, %struct.video_device** %3, align 8
  %9 = call %struct.ar_device* @video_get_drvdata(%struct.video_device* %8)
  store %struct.ar_device* %9, %struct.ar_device** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %10 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @ARVCR0, align 4
  %12 = call i32 @ar_outl(i64 0, i32 %11)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %18, %1
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 24
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = call i32 (...) @cpu_relax()
  br label %18

18:                                               ; preds = %16
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %13

21:                                               ; preds = %13
  %22 = load i64, i64* @ARVCR0_RST, align 8
  %23 = load i32, i32* @ARVCR0, align 4
  %24 = call i32 @ar_outl(i64 %22, i32 %23)
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %30, %21
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 1037
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = call i32 (...) @cpu_relax()
  br label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %25

33:                                               ; preds = %25
  %34 = load i64, i64* @ARINTSEL_INT3, align 8
  %35 = load i32, i32* @ARINTSEL, align 4
  %36 = call i32 @ar_outl(i64 %34, i32 %35)
  %37 = load %struct.ar_device*, %struct.ar_device** %4, align 8
  %38 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AR_SIZE_QVGA, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i64, i64* @ARVCR1_QVGA, align 8
  %44 = load i64, i64* %5, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %42, %33
  %47 = load %struct.ar_device*, %struct.ar_device** %4, align 8
  %48 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AR_MODE_NORMAL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i64, i64* @ARVCR1_NORMAL, align 8
  %54 = load i64, i64* %5, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i64, i64* %5, align 8
  %58 = load i32, i32* @ARVCR1, align 4
  %59 = call i32 @ar_outl(i64 %57, i32 %58)
  %60 = call i32 (...) @init_iic()
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %72, %56
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 1048576
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load i32, i32* @ARVCR0, align 4
  %66 = call i32 @ar_inl(i32 %65)
  %67 = load i32, i32* @ARVCR0_VDS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 1, i32* %7, align 4
  br label %75

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %61

75:                                               ; preds = %70, %61
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %132

81:                                               ; preds = %75
  %82 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %83 = call i32 @iic(i32 2, i32 120, i32 17, i32 1, i32 0)
  %84 = call i32 @iic(i32 3, i32 120, i32 18, i32 0, i32 6)
  %85 = call i32 @iic(i32 3, i32 120, i32 18, i32 18, i32 48)
  %86 = call i32 @iic(i32 3, i32 120, i32 18, i32 21, i32 88)
  %87 = call i32 @iic(i32 3, i32 120, i32 18, i32 23, i32 48)
  %88 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %89 = call i32 @iic(i32 3, i32 120, i32 18, i32 26, i32 151)
  %90 = call i32 @iic(i32 3, i32 120, i32 18, i32 27, i32 255)
  %91 = call i32 @iic(i32 3, i32 120, i32 18, i32 28, i32 255)
  %92 = call i32 @iic(i32 3, i32 120, i32 18, i32 38, i32 16)
  %93 = call i32 @iic(i32 3, i32 120, i32 18, i32 39, i32 0)
  %94 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %95 = call i32 @iic(i32 2, i32 120, i32 52, i32 2, i32 0)
  %96 = call i32 @iic(i32 2, i32 120, i32 122, i32 16, i32 0)
  %97 = call i32 @iic(i32 2, i32 120, i32 128, i32 57, i32 0)
  %98 = call i32 @iic(i32 2, i32 120, i32 129, i32 230, i32 0)
  %99 = call i32 @iic(i32 2, i32 120, i32 141, i32 0, i32 0)
  %100 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %101 = call i32 @iic(i32 2, i32 120, i32 142, i32 12, i32 0)
  %102 = call i32 @iic(i32 2, i32 120, i32 143, i32 0, i32 0)
  %103 = call i32 @iic(i32 2, i32 120, i32 147, i32 1, i32 0)
  %104 = call i32 @iic(i32 2, i32 120, i32 148, i32 205, i32 0)
  %105 = call i32 @iic(i32 2, i32 120, i32 149, i32 0, i32 0)
  %106 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %107 = call i32 @iic(i32 2, i32 120, i32 150, i32 160, i32 0)
  %108 = call i32 @iic(i32 2, i32 120, i32 151, i32 0, i32 0)
  %109 = call i32 @iic(i32 2, i32 120, i32 152, i32 96, i32 0)
  %110 = call i32 @iic(i32 2, i32 120, i32 153, i32 1, i32 0)
  %111 = call i32 @iic(i32 2, i32 120, i32 154, i32 25, i32 0)
  %112 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %113 = call i32 @iic(i32 2, i32 120, i32 155, i32 2, i32 0)
  %114 = call i32 @iic(i32 2, i32 120, i32 156, i32 232, i32 0)
  %115 = call i32 @iic(i32 2, i32 120, i32 157, i32 2, i32 0)
  %116 = call i32 @iic(i32 2, i32 120, i32 158, i32 46, i32 0)
  %117 = call i32 @iic(i32 2, i32 120, i32 184, i32 120, i32 0)
  %118 = call i32 @iic(i32 2, i32 120, i32 186, i32 5, i32 0)
  %119 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %120 = call i32 @iic(i32 3, i32 120, i32 73, i32 0, i32 149)
  %121 = call i32 @iic(i32 3, i32 120, i32 73, i32 1, i32 150)
  %122 = call i32 @iic(i32 3, i32 120, i32 73, i32 3, i32 133)
  %123 = call i32 @iic(i32 3, i32 120, i32 73, i32 4, i32 151)
  %124 = call i32 @iic(i32 3, i32 120, i32 73, i32 2, i32 126)
  %125 = call i32 @iic(i32 3, i32 120, i32 73, i32 5, i32 164)
  %126 = call i32 @iic(i32 3, i32 120, i32 73, i32 6, i32 4)
  %127 = call i32 @iic(i32 3, i32 120, i32 73, i32 7, i32 4)
  %128 = call i32 @iic(i32 2, i32 120, i32 72, i32 1, i32 0)
  %129 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %130 = call i32 @iic(i32 2, i32 120, i32 17, i32 0, i32 0)
  %131 = call i32 @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %81, %78
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.ar_device* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local i32 @ar_outl(i64, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @init_iic(...) #1

declare dso_local i32 @ar_inl(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @iic(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
