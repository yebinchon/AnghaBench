; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_module.c_check_rela.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_module.c_check_rela.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.module = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, %struct.mod_arch_syminfo* }
%struct.mod_arch_syminfo = type { i64, i64 }

@PLT_ENTRY_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.module*)* @check_rela to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_rela(%struct.TYPE_5__* %0, %struct.module* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.mod_arch_syminfo*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.module* %1, %struct.module** %4, align 8
  %6 = load %struct.module*, %struct.module** %4, align 8
  %7 = getelementptr inbounds %struct.module, %struct.module* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load %struct.mod_arch_syminfo*, %struct.mod_arch_syminfo** %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ELF_R_SYM(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mod_arch_syminfo, %struct.mod_arch_syminfo* %9, i64 %14
  store %struct.mod_arch_syminfo* %15, %struct.mod_arch_syminfo** %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ELF_R_TYPE(i32 %18)
  switch i32 %19, label %58 [
    i32 148, label %20
    i32 147, label %20
    i32 146, label %20
    i32 145, label %20
    i32 144, label %20
    i32 143, label %20
    i32 142, label %20
    i32 141, label %20
    i32 140, label %20
    i32 139, label %20
    i32 138, label %20
    i32 137, label %20
    i32 135, label %38
    i32 133, label %38
    i32 134, label %38
    i32 132, label %38
    i32 131, label %38
    i32 130, label %38
    i32 129, label %38
    i32 150, label %57
    i32 149, label %57
    i32 136, label %57
    i32 128, label %57
  ]

20:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %21 = load %struct.mod_arch_syminfo*, %struct.mod_arch_syminfo** %5, align 8
  %22 = getelementptr inbounds %struct.mod_arch_syminfo, %struct.mod_arch_syminfo* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load %struct.module*, %struct.module** %4, align 8
  %27 = getelementptr inbounds %struct.module, %struct.module* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mod_arch_syminfo*, %struct.mod_arch_syminfo** %5, align 8
  %31 = getelementptr inbounds %struct.mod_arch_syminfo, %struct.mod_arch_syminfo* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.module*, %struct.module** %4, align 8
  %33 = getelementptr inbounds %struct.module, %struct.module* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 8
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %25, %20
  br label %58

38:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %39 = load %struct.mod_arch_syminfo*, %struct.mod_arch_syminfo** %5, align 8
  %40 = getelementptr inbounds %struct.mod_arch_syminfo, %struct.mod_arch_syminfo* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, -1
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.module*, %struct.module** %4, align 8
  %45 = getelementptr inbounds %struct.module, %struct.module* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.mod_arch_syminfo*, %struct.mod_arch_syminfo** %5, align 8
  %49 = getelementptr inbounds %struct.mod_arch_syminfo, %struct.mod_arch_syminfo* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* @PLT_ENTRY_SIZE, align 8
  %51 = load %struct.module*, %struct.module** %4, align 8
  %52 = getelementptr inbounds %struct.module, %struct.module* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, %50
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %43, %38
  br label %58

57:                                               ; preds = %2, %2, %2, %2
  br label %58

58:                                               ; preds = %2, %57, %56, %37
  ret void
}

declare dso_local i32 @ELF_R_SYM(i32) #1

declare dso_local i32 @ELF_R_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
