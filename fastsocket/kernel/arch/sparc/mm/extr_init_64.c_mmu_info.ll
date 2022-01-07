; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_init_64.c_mmu_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_init_64.c_mmu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@tlb_type = common dso_local global i64 0, align 8
@cheetah = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"MMU Type\09: Cheetah\0A\00", align 1
@cheetah_plus = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"MMU Type\09: Cheetah+\0A\00", align 1
@spitfire = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"MMU Type\09: Spitfire\0A\00", align 1
@hypervisor = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"MMU Type\09: Hypervisor (sun4v)\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"MMU Type\09: ???\0A\00", align 1
@dcpage_flushes = common dso_local global i32 0, align 4
@dcpage_flushes_xcall = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmu_info(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %3 = load i64, i64* @tlb_type, align 8
  %4 = load i64, i64* @cheetah, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %8 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %36

9:                                                ; preds = %1
  %10 = load i64, i64* @tlb_type, align 8
  %11 = load i64, i64* @cheetah_plus, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %15 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %35

16:                                               ; preds = %9
  %17 = load i64, i64* @tlb_type, align 8
  %18 = load i64, i64* @spitfire, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %22 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %34

23:                                               ; preds = %16
  %24 = load i64, i64* @tlb_type, align 8
  %25 = load i64, i64* @hypervisor, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %29 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %33

30:                                               ; preds = %23
  %31 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %32 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %20
  br label %35

35:                                               ; preds = %34, %13
  br label %36

36:                                               ; preds = %35, %6
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
