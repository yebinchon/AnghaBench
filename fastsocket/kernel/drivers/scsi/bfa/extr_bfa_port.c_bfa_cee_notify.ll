; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_port.c_bfa_cee_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_port.c_bfa_cee_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_cee_s = type { %struct.TYPE_2__, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32 (i32, i8*)*, i32, i32 (i32, i8*)*, i32, i32 (i32, i8*)* }

@BFA_TRUE = common dso_local global i8* null, align 8
@BFA_STATUS_FAILED = common dso_local global i8* null, align 8
@BFA_FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_cee_notify(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_cee_s*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.bfa_cee_s*
  store %struct.bfa_cee_s* %7, %struct.bfa_cee_s** %5, align 8
  %8 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @bfa_trc(%struct.bfa_cee_s* %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %103 [
    i32 129, label %12
    i32 128, label %12
  ]

12:                                               ; preds = %2, %2
  %13 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %5, align 8
  %14 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %13, i32 0, i32 5
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** @BFA_TRUE, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %12
  %19 = load i8*, i8** @BFA_STATUS_FAILED, align 8
  %20 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %5, align 8
  %21 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @BFA_FALSE, align 8
  %23 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %5, align 8
  %24 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %5, align 8
  %26 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  %28 = load i32 (i32, i8*)*, i32 (i32, i8*)** %27, align 8
  %29 = icmp ne i32 (i32, i8*)* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %18
  %31 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %5, align 8
  %32 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 5
  %34 = load i32 (i32, i8*)*, i32 (i32, i8*)** %33, align 8
  %35 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %5, align 8
  %36 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** @BFA_STATUS_FAILED, align 8
  %40 = call i32 %34(i32 %38, i8* %39)
  br label %41

41:                                               ; preds = %30, %18
  br label %42

42:                                               ; preds = %41, %12
  %43 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %5, align 8
  %44 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** @BFA_TRUE, align 8
  %47 = icmp eq i8* %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %42
  %49 = load i8*, i8** @BFA_STATUS_FAILED, align 8
  %50 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %5, align 8
  %51 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @BFA_FALSE, align 8
  %53 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %5, align 8
  %54 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %5, align 8
  %56 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32 (i32, i8*)*, i32 (i32, i8*)** %57, align 8
  %59 = icmp ne i32 (i32, i8*)* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %48
  %61 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %5, align 8
  %62 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i32 (i32, i8*)*, i32 (i32, i8*)** %63, align 8
  %65 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %5, align 8
  %66 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i8*, i8** @BFA_STATUS_FAILED, align 8
  %70 = call i32 %64(i32 %68, i8* %69)
  br label %71

71:                                               ; preds = %60, %48
  br label %72

72:                                               ; preds = %71, %42
  %73 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %5, align 8
  %74 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** @BFA_TRUE, align 8
  %77 = icmp eq i8* %75, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %72
  %79 = load i8*, i8** @BFA_STATUS_FAILED, align 8
  %80 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %5, align 8
  %81 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** @BFA_FALSE, align 8
  %83 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %5, align 8
  %84 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %5, align 8
  %86 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32 (i32, i8*)*, i32 (i32, i8*)** %87, align 8
  %89 = icmp ne i32 (i32, i8*)* %88, null
  br i1 %89, label %90, label %101

90:                                               ; preds = %78
  %91 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %5, align 8
  %92 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32 (i32, i8*)*, i32 (i32, i8*)** %93, align 8
  %95 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %5, align 8
  %96 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i8*, i8** @BFA_STATUS_FAILED, align 8
  %100 = call i32 %94(i32 %98, i8* %99)
  br label %101

101:                                              ; preds = %90, %78
  br label %102

102:                                              ; preds = %101, %72
  br label %104

103:                                              ; preds = %2
  br label %104

104:                                              ; preds = %103, %102
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_cee_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
