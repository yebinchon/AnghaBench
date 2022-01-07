; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_command.c_ibmasm_new_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_command.c_ibmasm_new_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i64, i32, i32, i32, i32*, i32, i32* }
%struct.service_processor = type { i32 }

@IBMASM_CMD_MAX_BUFFER_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@IBMASM_CMD_PENDING = common dso_local global i32 0, align 4
@command_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"command count: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.command* @ibmasm_new_command(%struct.service_processor* %0, i64 %1) #0 {
  %3 = alloca %struct.command*, align 8
  %4 = alloca %struct.service_processor*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.command*, align 8
  store %struct.service_processor* %0, %struct.service_processor** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @IBMASM_CMD_MAX_BUFFER_SIZE, align 8
  %9 = icmp ugt i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.command* null, %struct.command** %3, align 8
  br label %56

11:                                               ; preds = %2
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i64 48, i32 %12)
  %14 = bitcast i8* %13 to %struct.command*
  store %struct.command* %14, %struct.command** %6, align 8
  %15 = load %struct.command*, %struct.command** %6, align 8
  %16 = icmp eq %struct.command* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store %struct.command* null, %struct.command** %3, align 8
  br label %56

18:                                               ; preds = %11
  %19 = load i64, i64* %5, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i64 %19, i32 %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.command*, %struct.command** %6, align 8
  %24 = getelementptr inbounds %struct.command, %struct.command* %23, i32 0, i32 6
  store i32* %22, i32** %24, align 8
  %25 = load %struct.command*, %struct.command** %6, align 8
  %26 = getelementptr inbounds %struct.command, %struct.command* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load %struct.command*, %struct.command** %6, align 8
  %31 = call i32 @kfree(%struct.command* %30)
  store %struct.command* null, %struct.command** %3, align 8
  br label %56

32:                                               ; preds = %18
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.command*, %struct.command** %6, align 8
  %35 = getelementptr inbounds %struct.command, %struct.command* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.command*, %struct.command** %6, align 8
  %37 = getelementptr inbounds %struct.command, %struct.command* %36, i32 0, i32 5
  %38 = call i32 @kref_init(i32* %37)
  %39 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %40 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %39, i32 0, i32 0
  %41 = load %struct.command*, %struct.command** %6, align 8
  %42 = getelementptr inbounds %struct.command, %struct.command* %41, i32 0, i32 4
  store i32* %40, i32** %42, align 8
  %43 = load i32, i32* @IBMASM_CMD_PENDING, align 4
  %44 = load %struct.command*, %struct.command** %6, align 8
  %45 = getelementptr inbounds %struct.command, %struct.command* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.command*, %struct.command** %6, align 8
  %47 = getelementptr inbounds %struct.command, %struct.command* %46, i32 0, i32 2
  %48 = call i32 @init_waitqueue_head(i32* %47)
  %49 = load %struct.command*, %struct.command** %6, align 8
  %50 = getelementptr inbounds %struct.command, %struct.command* %49, i32 0, i32 1
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = call i32 @atomic_inc(i32* @command_count)
  %53 = call i32 @atomic_read(i32* @command_count)
  %54 = call i32 @dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.command*, %struct.command** %6, align 8
  store %struct.command* %55, %struct.command** %3, align 8
  br label %56

56:                                               ; preds = %32, %29, %17, %10
  %57 = load %struct.command*, %struct.command** %3, align 8
  ret %struct.command* %57
}

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @kfree(%struct.command*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
