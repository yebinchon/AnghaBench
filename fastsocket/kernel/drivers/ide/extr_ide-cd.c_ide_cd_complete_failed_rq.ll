; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cd_complete_failed_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cd_complete_failed_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i64, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.request*)* @ide_cd_complete_failed_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_cd_complete_failed_rq(i32* %0, %struct.request* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %7 = load %struct.request*, %struct.request** %4, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.request*
  store %struct.request* %10, %struct.request** %5, align 8
  %11 = load %struct.request*, %struct.request** %4, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @bio_data(i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = load %struct.request*, %struct.request** %5, align 8
  %16 = icmp ne %struct.request* %15, null
  br i1 %16, label %17, label %48

17:                                               ; preds = %2
  %18 = load %struct.request*, %struct.request** %5, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.request*, %struct.request** %5, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @memcpy(i64 %25, i8* %26, i32 18)
  %28 = load %struct.request*, %struct.request** %4, align 8
  %29 = getelementptr inbounds %struct.request, %struct.request* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.request*, %struct.request** %5, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %22, %17
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.request*, %struct.request** %5, align 8
  %36 = call i32 @cdrom_analyze_sense_data(i32* %34, %struct.request* %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.request*, %struct.request** %5, align 8
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  %41 = load %struct.request*, %struct.request** %5, align 8
  %42 = call i32 @blk_rq_bytes(%struct.request* %41)
  %43 = call i64 @ide_end_rq(i32* %37, %struct.request* %38, i32 %40, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = call i32 (...) @BUG()
  br label %47

47:                                               ; preds = %45, %33
  br label %51

48:                                               ; preds = %2
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @cdrom_analyze_sense_data(i32* %49, %struct.request* null)
  br label %51

51:                                               ; preds = %48, %47
  ret void
}

declare dso_local i8* @bio_data(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @cdrom_analyze_sense_data(i32*, %struct.request*) #1

declare dso_local i64 @ide_end_rq(i32*, %struct.request*, i32, i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
