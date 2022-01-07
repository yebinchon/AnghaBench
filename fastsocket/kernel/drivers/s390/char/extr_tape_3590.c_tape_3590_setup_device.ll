; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_setup_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_setup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { %struct.tape_3590_rdc_data* }
%struct.tape_3590_rdc_data = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.tape_3590_disc_data = type { i32*, %struct.TYPE_2__, i32 }

@.str = private unnamed_addr constant [19 x i8] c"3590 device setup\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@READ_PREVIOUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Read device characteristics failed!\0A\00", align 1
@TAPE390_CRYPT_SUPPORTED_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Device has NO crypto support\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"3590 medium sense returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*)* @tape_3590_setup_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_3590_setup_device(%struct.tape_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tape_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tape_3590_disc_data*, align 8
  %6 = alloca %struct.tape_3590_rdc_data*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %3, align 8
  %7 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = load i32, i32* @GFP_DMA, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.tape_3590_rdc_data* @kzalloc(i32 16, i32 %10)
  %12 = bitcast %struct.tape_3590_rdc_data* %11 to %struct.tape_3590_disc_data*
  store %struct.tape_3590_disc_data* %12, %struct.tape_3590_disc_data** %5, align 8
  %13 = load %struct.tape_3590_disc_data*, %struct.tape_3590_disc_data** %5, align 8
  %14 = icmp eq %struct.tape_3590_disc_data* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %84

18:                                               ; preds = %1
  %19 = load i32, i32* @READ_PREVIOUS, align 4
  %20 = load %struct.tape_3590_disc_data*, %struct.tape_3590_disc_data** %5, align 8
  %21 = getelementptr inbounds %struct.tape_3590_disc_data, %struct.tape_3590_disc_data* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.tape_3590_disc_data*, %struct.tape_3590_disc_data** %5, align 8
  %23 = bitcast %struct.tape_3590_disc_data* %22 to %struct.tape_3590_rdc_data*
  %24 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %25 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %24, i32 0, i32 0
  store %struct.tape_3590_rdc_data* %23, %struct.tape_3590_rdc_data** %25, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load i32, i32* @GFP_DMA, align 4
  %28 = or i32 %26, %27
  %29 = call %struct.tape_3590_rdc_data* @kmalloc(i32 16, i32 %28)
  store %struct.tape_3590_rdc_data* %29, %struct.tape_3590_rdc_data** %6, align 8
  %30 = load %struct.tape_3590_rdc_data*, %struct.tape_3590_rdc_data** %6, align 8
  %31 = icmp ne %struct.tape_3590_rdc_data* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %18
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %79

35:                                               ; preds = %18
  %36 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %37 = load %struct.tape_3590_rdc_data*, %struct.tape_3590_rdc_data** %6, align 8
  %38 = call i32 @tape_3590_read_dev_chars(%struct.tape_device* %36, %struct.tape_3590_rdc_data* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 (i32, i8*, ...) @DBF_LH(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %76

43:                                               ; preds = %35
  %44 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %45 = call i32 @tape_std_assign(%struct.tape_device* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %76

49:                                               ; preds = %43
  %50 = load %struct.tape_3590_rdc_data*, %struct.tape_3590_rdc_data** %6, align 8
  %51 = getelementptr inbounds %struct.tape_3590_rdc_data, %struct.tape_3590_rdc_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 31
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 19
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load i32, i32* @TAPE390_CRYPT_SUPPORTED_MASK, align 4
  %58 = load %struct.tape_3590_disc_data*, %struct.tape_3590_disc_data** %5, align 8
  %59 = getelementptr inbounds %struct.tape_3590_disc_data, %struct.tape_3590_disc_data* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 8
  %63 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %64 = call i32 @tape_3592_disable_crypt(%struct.tape_device* %63)
  br label %67

65:                                               ; preds = %49
  %66 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %56
  %68 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %69 = call i32 @tape_3590_sense_medium(%struct.tape_device* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %4, align 4
  %74 = call i32 (i32, i8*, ...) @DBF_LH(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %76

75:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %84

76:                                               ; preds = %72, %48, %41
  %77 = load %struct.tape_3590_rdc_data*, %struct.tape_3590_rdc_data** %6, align 8
  %78 = call i32 @kfree(%struct.tape_3590_rdc_data* %77)
  br label %79

79:                                               ; preds = %76, %32
  %80 = load %struct.tape_3590_disc_data*, %struct.tape_3590_disc_data** %5, align 8
  %81 = bitcast %struct.tape_3590_disc_data* %80 to %struct.tape_3590_rdc_data*
  %82 = call i32 @kfree(%struct.tape_3590_rdc_data* %81)
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %79, %75, %15
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @DBF_EVENT(i32, i8*) #1

declare dso_local %struct.tape_3590_rdc_data* @kzalloc(i32, i32) #1

declare dso_local %struct.tape_3590_rdc_data* @kmalloc(i32, i32) #1

declare dso_local i32 @tape_3590_read_dev_chars(%struct.tape_device*, %struct.tape_3590_rdc_data*) #1

declare dso_local i32 @DBF_LH(i32, i8*, ...) #1

declare dso_local i32 @tape_std_assign(%struct.tape_device*) #1

declare dso_local i32 @tape_3592_disable_crypt(%struct.tape_device*) #1

declare dso_local i32 @tape_3590_sense_medium(%struct.tape_device*) #1

declare dso_local i32 @kfree(%struct.tape_3590_rdc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
