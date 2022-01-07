; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/async_tx/extr_async_pq.c_do_sync_gen_syndrome.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/async_tx/extr_async_pq.c_do_sync_gen_syndrome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i64, i8**)* }
%struct.page = type { i32 }
%struct.async_submit_ctl = type { i8** }

@raid6_empty_zero_page = common dso_local global i64 0, align 8
@raid6_call = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page**, i32, i32, i64, %struct.async_submit_ctl*)* @do_sync_gen_syndrome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_sync_gen_syndrome(%struct.page** %0, i32 %1, i32 %2, i64 %3, %struct.async_submit_ctl* %4) #0 {
  %6 = alloca %struct.page**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.async_submit_ctl*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store %struct.page** %0, %struct.page*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store %struct.async_submit_ctl* %4, %struct.async_submit_ctl** %10, align 8
  %13 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %10, align 8
  %14 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = icmp ne i8** %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %10, align 8
  %19 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  store i8** %20, i8*** %11, align 8
  br label %24

21:                                               ; preds = %5
  %22 = load %struct.page**, %struct.page*** %6, align 8
  %23 = bitcast %struct.page** %22 to i8**
  store i8** %23, i8*** %11, align 8
  br label %24

24:                                               ; preds = %21, %17
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %64, %24
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %25
  %30 = load %struct.page**, %struct.page*** %6, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.page*, %struct.page** %30, i64 %32
  %34 = load %struct.page*, %struct.page** %33, align 8
  %35 = icmp eq %struct.page* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 3
  %40 = icmp sgt i32 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load i64, i64* @raid6_empty_zero_page, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load i8**, i8*** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  store i8* %44, i8** %48, align 8
  br label %63

49:                                               ; preds = %29
  %50 = load %struct.page**, %struct.page*** %6, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.page*, %struct.page** %50, i64 %52
  %54 = load %struct.page*, %struct.page** %53, align 8
  %55 = call i8* @page_address(%struct.page* %54)
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr i8, i8* %55, i64 %57
  %59 = load i8**, i8*** %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  store i8* %58, i8** %62, align 8
  br label %63

63:                                               ; preds = %49, %36
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %25

67:                                               ; preds = %25
  %68 = load i32 (i32, i64, i8**)*, i32 (i32, i64, i8**)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @raid6_call, i32 0, i32 0), align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i64, i64* %9, align 8
  %71 = load i8**, i8*** %11, align 8
  %72 = call i32 %68(i32 %69, i64 %70, i8** %71)
  %73 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %10, align 8
  %74 = call i32 @async_tx_sync_epilog(%struct.async_submit_ctl* %73)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @async_tx_sync_epilog(%struct.async_submit_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
