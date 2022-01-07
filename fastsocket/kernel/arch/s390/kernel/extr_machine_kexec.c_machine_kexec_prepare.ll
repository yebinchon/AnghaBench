; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_machine_kexec.c_machine_kexec_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_machine_kexec.c_machine_kexec_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i64, i32 }

@ipl_flags = common dso_local global i32 0, align 4
@IPL_NSS_VALID = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@KEXEC_TYPE_CRASH = common dso_local global i64 0, align 8
@KEXEC_TYPE_DEFAULT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@relocate_kernel = common dso_local global i32 0, align 4
@relocate_kernel_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_kexec_prepare(%struct.kimage* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kimage*, align 8
  %4 = alloca i8*, align 8
  store %struct.kimage* %0, %struct.kimage** %3, align 8
  %5 = load i32, i32* @ipl_flags, align 4
  %6 = load i32, i32* @IPL_NSS_VALID, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOSYS, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.kimage*, %struct.kimage** %3, align 8
  %14 = getelementptr inbounds %struct.kimage, %struct.kimage* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @KEXEC_TYPE_CRASH, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 (...) @machine_kexec_prepare_kdump()
  store i32 %19, i32* %2, align 4
  br label %39

20:                                               ; preds = %12
  %21 = load %struct.kimage*, %struct.kimage** %3, align 8
  %22 = getelementptr inbounds %struct.kimage, %struct.kimage* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @KEXEC_TYPE_DEFAULT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %39

29:                                               ; preds = %20
  %30 = load %struct.kimage*, %struct.kimage** %3, align 8
  %31 = getelementptr inbounds %struct.kimage, %struct.kimage* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @page_to_phys(i32 %32)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %4, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* @relocate_kernel, align 4
  %37 = load i32, i32* @relocate_kernel_len, align 4
  %38 = call i32 @memcpy(i8* %35, i32 %36, i32 %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %29, %26, %18, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @machine_kexec_prepare_kdump(...) #1

declare dso_local i64 @page_to_phys(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
