; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_create_vm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_create_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.kvm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.sca_block*, i32, %struct.TYPE_4__ }
%struct.sca_block = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"kvm-%u\00", align 1
@current = common dso_local global %struct.TYPE_6__* null, align 8
@debug_sprintf_view = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"vm created\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvm* @kvm_arch_create_vm() #0 {
  %1 = alloca %struct.kvm*, align 8
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [16 x i8], align 16
  %5 = call i32 (...) @s390_enable_sie()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %76

9:                                                ; preds = %0
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.kvm* @kzalloc(i32 24, i32 %12)
  store %struct.kvm* %13, %struct.kvm** %2, align 8
  %14 = load %struct.kvm*, %struct.kvm** %2, align 8
  %15 = icmp ne %struct.kvm* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  br label %76

17:                                               ; preds = %9
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i64 @get_zeroed_page(i32 %18)
  %20 = inttoptr i64 %19 to %struct.sca_block*
  %21 = load %struct.kvm*, %struct.kvm** %2, align 8
  %22 = getelementptr inbounds %struct.kvm, %struct.kvm* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store %struct.sca_block* %20, %struct.sca_block** %23, align 8
  %24 = load %struct.kvm*, %struct.kvm** %2, align 8
  %25 = getelementptr inbounds %struct.kvm, %struct.kvm* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.sca_block*, %struct.sca_block** %26, align 8
  %28 = icmp ne %struct.sca_block* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %17
  br label %73

30:                                               ; preds = %17
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %37 = call i32 @debug_register(i8* %36, i32 8, i32 2, i32 64)
  %38 = load %struct.kvm*, %struct.kvm** %2, align 8
  %39 = getelementptr inbounds %struct.kvm, %struct.kvm* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  %41 = load %struct.kvm*, %struct.kvm** %2, align 8
  %42 = getelementptr inbounds %struct.kvm, %struct.kvm* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %30
  br label %66

47:                                               ; preds = %30
  %48 = load %struct.kvm*, %struct.kvm** %2, align 8
  %49 = getelementptr inbounds %struct.kvm, %struct.kvm* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = call i32 @spin_lock_init(i32* %51)
  %53 = load %struct.kvm*, %struct.kvm** %2, align 8
  %54 = getelementptr inbounds %struct.kvm, %struct.kvm* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.kvm*, %struct.kvm** %2, align 8
  %59 = getelementptr inbounds %struct.kvm, %struct.kvm* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @debug_register_view(i32 %61, i32* @debug_sprintf_view)
  %63 = load %struct.kvm*, %struct.kvm** %2, align 8
  %64 = call i32 @VM_EVENT(%struct.kvm* %63, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.kvm*, %struct.kvm** %2, align 8
  store %struct.kvm* %65, %struct.kvm** %1, align 8
  br label %79

66:                                               ; preds = %46
  %67 = load %struct.kvm*, %struct.kvm** %2, align 8
  %68 = getelementptr inbounds %struct.kvm, %struct.kvm* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.sca_block*, %struct.sca_block** %69, align 8
  %71 = ptrtoint %struct.sca_block* %70 to i64
  %72 = call i32 @free_page(i64 %71)
  br label %73

73:                                               ; preds = %66, %29
  %74 = load %struct.kvm*, %struct.kvm** %2, align 8
  %75 = call i32 @kfree(%struct.kvm* %74)
  br label %76

76:                                               ; preds = %73, %16, %8
  %77 = load i32, i32* %3, align 4
  %78 = call %struct.kvm* @ERR_PTR(i32 %77)
  store %struct.kvm* %78, %struct.kvm** %1, align 8
  br label %79

79:                                               ; preds = %76, %47
  %80 = load %struct.kvm*, %struct.kvm** %1, align 8
  ret %struct.kvm* %80
}

declare dso_local i32 @s390_enable_sie(...) #1

declare dso_local %struct.kvm* @kzalloc(i32, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @debug_register(i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @debug_register_view(i32, i32*) #1

declare dso_local i32 @VM_EVENT(%struct.kvm*, i32, i8*, i8*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.kvm*) #1

declare dso_local %struct.kvm* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
