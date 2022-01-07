; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdoops.c_mtdoops_console_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdoops.c_mtdoops_console_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console = type { %struct.mtdoops_context* }
%struct.mtdoops_context = type { i32, i32, i32*, i32, i32, %struct.mtd_info* }
%struct.mtd_info = type { i32 }

@oops_in_progress = common dso_local global i32 0, align 4
@MTDOOPS_KERNMSG_MAGIC = common dso_local global i32 0, align 4
@OOPS_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.console*, i8*, i32)* @mtdoops_console_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtdoops_console_write(%struct.console* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtdoops_context*, align 8
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.console*, %struct.console** %4, align 8
  %12 = getelementptr inbounds %struct.console, %struct.console* %11, i32 0, i32 0
  %13 = load %struct.mtdoops_context*, %struct.mtdoops_context** %12, align 8
  store %struct.mtdoops_context* %13, %struct.mtdoops_context** %7, align 8
  %14 = load %struct.mtdoops_context*, %struct.mtdoops_context** %7, align 8
  %15 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %14, i32 0, i32 5
  %16 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  store %struct.mtd_info* %16, %struct.mtd_info** %8, align 8
  %17 = load i32, i32* @oops_in_progress, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = call i32 (...) @mtdoops_console_sync()
  br label %104

21:                                               ; preds = %3
  %22 = load %struct.mtdoops_context*, %struct.mtdoops_context** %7, align 8
  %23 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %28 = icmp ne %struct.mtd_info* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %21
  br label %104

30:                                               ; preds = %26
  %31 = load %struct.mtdoops_context*, %struct.mtdoops_context** %7, align 8
  %32 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %31, i32 0, i32 1
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.mtdoops_context*, %struct.mtdoops_context** %7, align 8
  %36 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %30
  %40 = load %struct.mtdoops_context*, %struct.mtdoops_context** %7, align 8
  %41 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %40, i32 0, i32 1
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  br label %104

44:                                               ; preds = %30
  %45 = load %struct.mtdoops_context*, %struct.mtdoops_context** %7, align 8
  %46 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.mtdoops_context*, %struct.mtdoops_context** %7, align 8
  %51 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %10, align 8
  %53 = load %struct.mtdoops_context*, %struct.mtdoops_context** %7, align 8
  %54 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  %58 = load i32, i32* @MTDOOPS_KERNMSG_MAGIC, align 4
  %59 = load i32*, i32** %10, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %struct.mtdoops_context*, %struct.mtdoops_context** %7, align 8
  %61 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %60, i32 0, i32 0
  store i32 8, i32* %61, align 8
  br label %62

62:                                               ; preds = %49, %44
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.mtdoops_context*, %struct.mtdoops_context** %7, align 8
  %65 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add i32 %63, %66
  %68 = load i32, i32* @OOPS_PAGE_SIZE, align 4
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load i32, i32* @OOPS_PAGE_SIZE, align 4
  %72 = load %struct.mtdoops_context*, %struct.mtdoops_context** %7, align 8
  %73 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub i32 %71, %74
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %70, %62
  %77 = load %struct.mtdoops_context*, %struct.mtdoops_context** %7, align 8
  %78 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.mtdoops_context*, %struct.mtdoops_context** %7, align 8
  %81 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @memcpy(i32* %84, i8* %85, i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.mtdoops_context*, %struct.mtdoops_context** %7, align 8
  %90 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.mtdoops_context*, %struct.mtdoops_context** %7, align 8
  %94 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %93, i32 0, i32 1
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load %struct.mtdoops_context*, %struct.mtdoops_context** %7, align 8
  %98 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @OOPS_PAGE_SIZE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %76
  %103 = call i32 (...) @mtdoops_console_sync()
  br label %104

104:                                              ; preds = %19, %29, %39, %102, %76
  ret void
}

declare dso_local i32 @mtdoops_console_sync(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
