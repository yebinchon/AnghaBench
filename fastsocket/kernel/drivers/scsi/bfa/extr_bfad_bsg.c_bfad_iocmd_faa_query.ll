; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_faa_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_faa_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_faa_attr_s = type { i64, i32 }
%struct.bfad_hal_comp = type { i64, i32 }

@BFA_STATUS_OK = common dso_local global i64 0, align 8
@bfad_hcb_comp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_faa_query(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_faa_attr_s*, align 8
  %6 = alloca %struct.bfad_hal_comp, align 8
  %7 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.bfa_bsg_faa_attr_s*
  store %struct.bfa_bsg_faa_attr_s* %9, %struct.bfa_bsg_faa_attr_s** %5, align 8
  %10 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 1
  %11 = call i32 @init_completion(i32* %10)
  %12 = load i64, i64* @BFA_STATUS_OK, align 8
  %13 = load %struct.bfa_bsg_faa_attr_s*, %struct.bfa_bsg_faa_attr_s** %5, align 8
  %14 = getelementptr inbounds %struct.bfa_bsg_faa_attr_s, %struct.bfa_bsg_faa_attr_s* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %19, i32 0, i32 1
  %21 = load %struct.bfa_bsg_faa_attr_s*, %struct.bfa_bsg_faa_attr_s** %5, align 8
  %22 = getelementptr inbounds %struct.bfa_bsg_faa_attr_s, %struct.bfa_bsg_faa_attr_s* %21, i32 0, i32 1
  %23 = load i32, i32* @bfad_hcb_comp, align 4
  %24 = call i64 @bfa_faa_query(i32* %20, i32* %22, i32 %23, %struct.bfad_hal_comp* %6)
  %25 = load %struct.bfa_bsg_faa_attr_s*, %struct.bfa_bsg_faa_attr_s** %5, align 8
  %26 = getelementptr inbounds %struct.bfa_bsg_faa_attr_s, %struct.bfa_bsg_faa_attr_s* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %28 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %27, i32 0, i32 0
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.bfa_bsg_faa_attr_s*, %struct.bfa_bsg_faa_attr_s** %5, align 8
  %32 = getelementptr inbounds %struct.bfa_bsg_faa_attr_s, %struct.bfa_bsg_faa_attr_s* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BFA_STATUS_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %44

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 1
  %39 = call i32 @wait_for_completion(i32* %38)
  %40 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.bfa_bsg_faa_attr_s*, %struct.bfa_bsg_faa_attr_s** %5, align 8
  %43 = getelementptr inbounds %struct.bfa_bsg_faa_attr_s, %struct.bfa_bsg_faa_attr_s* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %37, %36
  ret i32 0
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bfa_faa_query(i32*, i32*, i32, %struct.bfad_hal_comp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
