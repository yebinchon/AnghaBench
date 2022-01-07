; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_sfp_s = type { i32, i32, i8* }

@BFA_STATUS_IOC_FAILURE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @bfa_sfp_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_sfp_notify(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_sfp_s*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.bfa_sfp_s*
  store %struct.bfa_sfp_s* %7, %struct.bfa_sfp_s** %5, align 8
  %8 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @bfa_trc(%struct.bfa_sfp_s* %8, i32 %9)
  %11 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %12 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %13 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @bfa_trc(%struct.bfa_sfp_s* %11, i32 %14)
  %16 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %17 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %18 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bfa_trc(%struct.bfa_sfp_s* %16, i32 %19)
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %45 [
    i32 129, label %22
    i32 128, label %22
  ]

22:                                               ; preds = %2, %2
  %23 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %24 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i8*, i8** @BFA_STATUS_IOC_FAILURE, align 8
  %29 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %30 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %32 = call i32 @bfa_cb_sfp_show(%struct.bfa_sfp_s* %31)
  br label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %35 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i8*, i8** @BFA_STATUS_IOC_FAILURE, align 8
  %40 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %41 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %43 = call i32 @bfa_cb_sfp_state_query(%struct.bfa_sfp_s* %42)
  br label %44

44:                                               ; preds = %38, %33
  br label %46

45:                                               ; preds = %2
  br label %46

46:                                               ; preds = %45, %44
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_sfp_s*, i32) #1

declare dso_local i32 @bfa_cb_sfp_show(%struct.bfa_sfp_s*) #1

declare dso_local i32 @bfa_cb_sfp_state_query(%struct.bfa_sfp_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
