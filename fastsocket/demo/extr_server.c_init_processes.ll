; ModuleID = '/home/carl/AnghaBench/fastsocket/demo/extr_server.c_init_processes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/demo/extr_server.c_init_processes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64 }

@num_workers = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@wdata = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Unable to mmap shared global wdata\00", align 1
@start_cpu = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to fork child process\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_processes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @num_workers, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 %4, 4
  %6 = trunc i64 %5 to i32
  %7 = load i32, i32* @PROT_READ, align 4
  %8 = load i32, i32* @PROT_WRITE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MAP_ANON, align 4
  %11 = load i32, i32* @MAP_SHARED, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.TYPE_4__* @mmap(i32* null, i32 %6, i32 %9, i32 %12, i32 -1, i32 0)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** @wdata, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wdata, align 8
  %15 = load i32, i32* @num_workers, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i32 @memset(%struct.TYPE_4__* %14, i32 0, i32 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wdata, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %0
  %23 = call i32 @perror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 (...) @exit_cleanup()
  br label %25

25:                                               ; preds = %22, %0
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %69, %25
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @num_workers, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %26
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wdata, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @start_cpu, align 8
  %39 = add nsw i64 %37, %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wdata, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i64 %39, i64* %44, align 8
  %45 = call i32 (...) @fork()
  store i32 %45, i32* %2, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %30
  %48 = call i32 @perror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 (...) @exit_cleanup()
  br label %68

50:                                               ; preds = %30
  %51 = load i32, i32* %2, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = call i32 (...) @getpid()
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wdata, align 8
  %56 = load i32, i32* %1, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wdata, align 8
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = bitcast %struct.TYPE_4__* %63 to i8*
  %65 = call i32 @process_clients(i8* %64)
  %66 = call i32 @exit(i32 0) #3
  unreachable

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67, %47
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %1, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %1, align 4
  br label %26

72:                                               ; preds = %26
  ret void
}

declare dso_local %struct.TYPE_4__* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @exit_cleanup(...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @process_clients(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
