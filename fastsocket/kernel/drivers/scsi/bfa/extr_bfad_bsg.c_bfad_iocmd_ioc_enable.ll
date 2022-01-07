; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_ioc_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_ioc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bfa_bsg_gen_s = type { i8* }

@BFA_STATUS_OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_ioc_enable(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bfa_bsg_gen_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.bfa_bsg_gen_s*
  store %struct.bfa_bsg_gen_s* %10, %struct.bfa_bsg_gen_s** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %12 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %11, i32 0, i32 1
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %16 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @bfa_ioc_is_disabled(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %22 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %21, i32 0, i32 1
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load i8*, i8** @BFA_STATUS_OK, align 8
  %26 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %6, align 8
  %27 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %47

29:                                               ; preds = %2
  %30 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %31 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %30, i32 0, i32 0
  %32 = call i32 @init_completion(i32* %31)
  %33 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %34 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %33, i32 0, i32 2
  %35 = call i32 @bfa_iocfc_enable(%struct.TYPE_2__* %34)
  %36 = load i8*, i8** @BFA_STATUS_OK, align 8
  %37 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %6, align 8
  %38 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %40 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %39, i32 0, i32 1
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %44 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %43, i32 0, i32 0
  %45 = call i32 @wait_for_completion(i32* %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %29, %20
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_ioc_is_disabled(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @bfa_iocfc_enable(%struct.TYPE_2__*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
