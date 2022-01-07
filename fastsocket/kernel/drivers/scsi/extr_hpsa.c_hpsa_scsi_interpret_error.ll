; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_interpret_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_interpret_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandList = type { %struct.ErrorInfo*, %struct.TYPE_4__* }
%struct.ErrorInfo = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"cmd %p has completed with errors\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"cmd %p has SCSI Status = %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [141 x i8] c"SCSI status is abnormally zero.  (probably indicates selection timeout reported incorrectly due to a known firmware bug, circa July, 2001.)\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"UNDERRUN\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"cp %p has completed with data overrun\0A\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"cp %p is reported invalid (probably means target device no longer present)\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"cp %p has protocol error \0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"cp %p had hardware error\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"cp %p had connection lost\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"cp %p was aborted\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"cp %p reports abort failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"cp %p aborted due to an unsolicited abort\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"cp %p timed out\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Command unabortable\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"cp %p returned unknown status %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CommandList*)* @hpsa_scsi_interpret_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_scsi_interpret_error(%struct.CommandList* %0) #0 {
  %2 = alloca %struct.CommandList*, align 8
  %3 = alloca %struct.ErrorInfo*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.CommandList* %0, %struct.CommandList** %2, align 8
  %5 = load %struct.CommandList*, %struct.CommandList** %2, align 8
  %6 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.CommandList*, %struct.CommandList** %2, align 8
  %12 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %11, i32 0, i32 0
  %13 = load %struct.ErrorInfo*, %struct.ErrorInfo** %12, align 8
  store %struct.ErrorInfo* %13, %struct.ErrorInfo** %3, align 8
  %14 = load %struct.ErrorInfo*, %struct.ErrorInfo** %3, align 8
  %15 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %77 [
    i32 131, label %17
    i32 135, label %35
    i32 136, label %38
    i32 133, label %42
    i32 132, label %46
    i32 134, label %50
    i32 137, label %54
    i32 139, label %58
    i32 138, label %62
    i32 128, label %66
    i32 130, label %70
    i32 129, label %74
  ]

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.CommandList*, %struct.CommandList** %2, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.CommandList* %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.CommandList*, %struct.CommandList** %2, align 8
  %23 = load %struct.ErrorInfo*, %struct.ErrorInfo** %3, align 8
  %24 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.CommandList* %22, i32 %25)
  %27 = load %struct.ErrorInfo*, %struct.ErrorInfo** %3, align 8
  %28 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %32, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %17
  br label %84

35:                                               ; preds = %1
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @dev_info(%struct.device* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %84

38:                                               ; preds = %1
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.CommandList*, %struct.CommandList** %2, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), %struct.CommandList* %40)
  br label %84

42:                                               ; preds = %1
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load %struct.CommandList*, %struct.CommandList** %2, align 8
  %45 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %43, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0), %struct.CommandList* %44)
  br label %84

46:                                               ; preds = %1
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load %struct.CommandList*, %struct.CommandList** %2, align 8
  %49 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), %struct.CommandList* %48)
  br label %84

50:                                               ; preds = %1
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.CommandList*, %struct.CommandList** %2, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), %struct.CommandList* %52)
  br label %84

54:                                               ; preds = %1
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load %struct.CommandList*, %struct.CommandList** %2, align 8
  %57 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), %struct.CommandList* %56)
  br label %84

58:                                               ; preds = %1
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load %struct.CommandList*, %struct.CommandList** %2, align 8
  %61 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), %struct.CommandList* %60)
  br label %84

62:                                               ; preds = %1
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load %struct.CommandList*, %struct.CommandList** %2, align 8
  %65 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), %struct.CommandList* %64)
  br label %84

66:                                               ; preds = %1
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load %struct.CommandList*, %struct.CommandList** %2, align 8
  %69 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %67, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), %struct.CommandList* %68)
  br label %84

70:                                               ; preds = %1
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = load %struct.CommandList*, %struct.CommandList** %2, align 8
  %73 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), %struct.CommandList* %72)
  br label %84

74:                                               ; preds = %1
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  br label %84

77:                                               ; preds = %1
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load %struct.CommandList*, %struct.CommandList** %2, align 8
  %80 = load %struct.ErrorInfo*, %struct.ErrorInfo** %3, align 8
  %81 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), %struct.CommandList* %79, i32 %82)
  br label %84

84:                                               ; preds = %77, %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %35, %34
  ret void
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
