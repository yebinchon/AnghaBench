; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_complete_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_complete_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i64, i32*, %struct.cmdbuf_t*, i32 }
%struct.cmdbuf_t = type { i64, i64, i32*, %struct.cmdbuf_t* }

@DEBUG_TRANSCMD = common dso_local global i32 0, align 4
@DEBUG_LOCKCMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"write_command: sent %u bytes, %u left\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardstate*)* @complete_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_cb(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.cardstate*, align 8
  %3 = alloca %struct.cmdbuf_t*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %2, align 8
  %4 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %5 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %4, i32 0, i32 2
  %6 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %5, align 8
  store %struct.cmdbuf_t* %6, %struct.cmdbuf_t** %3, align 8
  %7 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %8 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %11 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = sub nsw i64 %13, %9
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 8
  %16 = load i32, i32* @DEBUG_TRANSCMD, align 4
  %17 = load i32, i32* @DEBUG_LOCKCMD, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %20 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %23 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @gig_dbg(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %21, i32 %24)
  %26 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %27 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %26, i32 0, i32 3
  %28 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %27, align 8
  %29 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %30 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %29, i32 0, i32 2
  store %struct.cmdbuf_t* %28, %struct.cmdbuf_t** %30, align 8
  %31 = icmp ne %struct.cmdbuf_t* %28, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %1
  %33 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %34 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %33, i32 0, i32 2
  %35 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %34, align 8
  %36 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %38 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %37, i32 0, i32 2
  %39 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %38, align 8
  %40 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %43 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %49

44:                                               ; preds = %1
  %45 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %46 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %48 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %44, %32
  %50 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %51 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %56 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @tasklet_schedule(i64 %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %61 = call i32 @kfree(%struct.cmdbuf_t* %60)
  ret void
}

declare dso_local i32 @gig_dbg(i32, i8*, i64, i32) #1

declare dso_local i32 @tasklet_schedule(i64) #1

declare dso_local i32 @kfree(%struct.cmdbuf_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
