; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_device_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_device_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Illegal state transition %s->%s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_device_set_state(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %56 [
    i32 134, label %16
    i32 129, label %21
    i32 130, label %26
    i32 131, label %31
    i32 128, label %31
    i32 136, label %36
    i32 133, label %41
    i32 135, label %46
    i32 132, label %51
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %19 [
    i32 133, label %18
  ]

18:                                               ; preds = %16
  br label %20

19:                                               ; preds = %16
  br label %60

20:                                               ; preds = %18
  br label %56

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %24 [
    i32 134, label %23
    i32 131, label %23
    i32 128, label %23
    i32 130, label %23
    i32 136, label %23
  ]

23:                                               ; preds = %21, %21, %21, %21, %21
  br label %25

24:                                               ; preds = %21
  br label %60

25:                                               ; preds = %23
  br label %56

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %29 [
    i32 129, label %28
    i32 131, label %28
    i32 128, label %28
  ]

28:                                               ; preds = %26, %26, %26
  br label %30

29:                                               ; preds = %26
  br label %60

30:                                               ; preds = %28
  br label %56

31:                                               ; preds = %14, %14
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %34 [
    i32 134, label %33
    i32 129, label %33
    i32 130, label %33
    i32 136, label %33
  ]

33:                                               ; preds = %31, %31, %31, %31
  br label %35

34:                                               ; preds = %31
  br label %60

35:                                               ; preds = %33
  br label %56

36:                                               ; preds = %14
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %39 [
    i32 129, label %38
    i32 133, label %38
  ]

38:                                               ; preds = %36, %36
  br label %40

39:                                               ; preds = %36
  br label %60

40:                                               ; preds = %38
  br label %56

41:                                               ; preds = %14
  %42 = load i32, i32* %6, align 4
  switch i32 %42, label %44 [
    i32 134, label %43
  ]

43:                                               ; preds = %41
  br label %45

44:                                               ; preds = %41
  br label %60

45:                                               ; preds = %43
  br label %56

46:                                               ; preds = %14
  %47 = load i32, i32* %6, align 4
  switch i32 %47, label %49 [
    i32 134, label %48
    i32 129, label %48
    i32 130, label %48
    i32 131, label %48
    i32 128, label %48
    i32 136, label %48
  ]

48:                                               ; preds = %46, %46, %46, %46, %46, %46
  br label %50

49:                                               ; preds = %46
  br label %60

50:                                               ; preds = %48
  br label %56

51:                                               ; preds = %14
  %52 = load i32, i32* %6, align 4
  switch i32 %52, label %54 [
    i32 134, label %53
    i32 129, label %53
    i32 131, label %53
    i32 128, label %53
    i32 135, label %53
  ]

53:                                               ; preds = %51, %51, %51, %51, %51
  br label %55

54:                                               ; preds = %51
  br label %60

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %14, %55, %50, %45, %40, %35, %30, %25, %20
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %59 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %71

60:                                               ; preds = %54, %49, %44, %39, %34, %29, %24, %19
  %61 = load i32, i32* @KERN_ERR, align 4
  %62 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @scsi_device_state_name(i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @scsi_device_state_name(i32 %65)
  %67 = call i32 @sdev_printk(i32 %61, %struct.scsi_device* %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %66)
  %68 = call i32 @SCSI_LOG_ERROR_RECOVERY(i32 1, i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %60, %56, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @SCSI_LOG_ERROR_RECOVERY(i32, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, i32) #1

declare dso_local i32 @scsi_device_state_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
