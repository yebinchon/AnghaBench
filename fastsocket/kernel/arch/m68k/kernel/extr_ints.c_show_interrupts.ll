; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/kernel/extr_ints.c_show_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/kernel/extr_ints.c_show_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_node = type { i32, %struct.irq_node* }
%struct.irq_controller = type { i32 }
%struct.seq_file = type { i32 }
%struct.TYPE_2__ = type { i32* }

@irq_list = common dso_local global %struct.irq_node** null, align 8
@irq_controller = common dso_local global %struct.irq_controller** null, align 8
@.str = private unnamed_addr constant [18 x i8] c"%-8s %3u: %10u %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_interrupts(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.irq_controller*, align 8
  %6 = alloca %struct.irq_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.irq_node**, %struct.irq_node*** @irq_list, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.irq_node*, %struct.irq_node** %12, i64 %14
  %16 = load %struct.irq_node*, %struct.irq_node** %15, align 8
  %17 = icmp ne %struct.irq_node* %16, null
  br i1 %17, label %18, label %60

18:                                               ; preds = %2
  %19 = load %struct.irq_controller**, %struct.irq_controller*** @irq_controller, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.irq_controller*, %struct.irq_controller** %19, i64 %21
  %23 = load %struct.irq_controller*, %struct.irq_controller** %22, align 8
  store %struct.irq_controller* %23, %struct.irq_controller** %5, align 8
  %24 = load %struct.irq_node**, %struct.irq_node*** @irq_list, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.irq_node*, %struct.irq_node** %24, i64 %26
  %28 = load %struct.irq_node*, %struct.irq_node** %27, align 8
  store %struct.irq_node* %28, %struct.irq_node** %6, align 8
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = load %struct.irq_controller*, %struct.irq_controller** %5, align 8
  %31 = getelementptr inbounds %struct.irq_controller, %struct.irq_controller* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32* @kstat_cpu(i32 0)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32* %34, i32** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.irq_node*, %struct.irq_node** %6, align 8
  %43 = getelementptr inbounds %struct.irq_node, %struct.irq_node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %51, %18
  %47 = load %struct.irq_node*, %struct.irq_node** %6, align 8
  %48 = getelementptr inbounds %struct.irq_node, %struct.irq_node* %47, i32 0, i32 1
  %49 = load %struct.irq_node*, %struct.irq_node** %48, align 8
  store %struct.irq_node* %49, %struct.irq_node** %6, align 8
  %50 = icmp ne %struct.irq_node* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %53 = load %struct.irq_node*, %struct.irq_node** %6, align 8
  %54 = getelementptr inbounds %struct.irq_node, %struct.irq_node* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %46

57:                                               ; preds = %46
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = call i32 @seq_puts(%struct.seq_file* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %2
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32* @kstat_cpu(i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
