; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_diag_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_diag_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_diag_s = type { i32, i8*, i32, i32 (i32, i8*)*, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i8*, i32, i32 (i32, i8*)* }
%struct.TYPE_3__ = type { i32, i8*, i32, i32 (i32, i8*)* }

@BFA_STATUS_IOC_FAILURE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @bfa_diag_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_diag_notify(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_diag_s*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.bfa_diag_s*
  store %struct.bfa_diag_s* %7, %struct.bfa_diag_s** %5, align 8
  %8 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @bfa_trc(%struct.bfa_diag_s* %8, i32 %9)
  %11 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %12 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %13 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @bfa_trc(%struct.bfa_diag_s* %11, i32 %14)
  %16 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %17 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %18 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @bfa_trc(%struct.bfa_diag_s* %16, i32 %20)
  %22 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %23 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %24 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @bfa_trc(%struct.bfa_diag_s* %22, i32 %26)
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %116 [
    i32 129, label %29
    i32 128, label %29
  ]

29:                                               ; preds = %2, %2
  %30 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %31 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = load i8*, i8** @BFA_STATUS_IOC_FAILURE, align 8
  %37 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %38 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %41 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i32 (i32, i8*)*, i32 (i32, i8*)** %42, align 8
  %44 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %45 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %49 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 %43(i32 %47, i8* %51)
  %53 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %54 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %35, %29
  %57 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %58 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %56
  %63 = load i8*, i8** @BFA_STATUS_IOC_FAILURE, align 8
  %64 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %65 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i8* %63, i8** %66, align 8
  %67 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %68 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load i32 (i32, i8*)*, i32 (i32, i8*)** %69, align 8
  %71 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %72 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %76 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 %70(i32 %74, i8* %78)
  %80 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %81 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %62, %56
  %84 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %85 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %115

88:                                               ; preds = %83
  %89 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %90 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %95 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %94, i32 0, i32 5
  %96 = call i32 @bfa_timer_stop(i32* %95)
  %97 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %98 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %97, i32 0, i32 4
  store i32 0, i32* %98, align 8
  br label %99

99:                                               ; preds = %93, %88
  %100 = load i8*, i8** @BFA_STATUS_IOC_FAILURE, align 8
  %101 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %102 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %104 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %103, i32 0, i32 3
  %105 = load i32 (i32, i8*)*, i32 (i32, i8*)** %104, align 8
  %106 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %107 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %110 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 %105(i32 %108, i8* %111)
  %113 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %5, align 8
  %114 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %113, i32 0, i32 0
  store i32 0, i32* %114, align 8
  br label %115

115:                                              ; preds = %99, %83
  br label %117

116:                                              ; preds = %2
  br label %117

117:                                              ; preds = %116, %115
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_diag_s*, i32) #1

declare dso_local i32 @bfa_timer_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
