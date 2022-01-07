; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monwriter.c_monwrite_new_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monwriter.c_monwrite_new_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_private = type { %struct.mon_buf*, %struct.monwrite_hdr }
%struct.mon_buf = type { i32, %struct.mon_buf*, i32 }
%struct.monwrite_hdr = type { i32 }

@APPLDATA_START_INTERVAL_REC = common dso_local global i32 0, align 4
@APPLDATA_START_CONFIG_REC = common dso_local global i32 0, align 4
@APPLDATA_GEN_EVENT_REC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mon_private*)* @monwrite_new_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monwrite_new_data(%struct.mon_private* %0) #0 {
  %2 = alloca %struct.mon_private*, align 8
  %3 = alloca %struct.monwrite_hdr*, align 8
  %4 = alloca %struct.mon_buf*, align 8
  %5 = alloca i32, align 4
  store %struct.mon_private* %0, %struct.mon_private** %2, align 8
  %6 = load %struct.mon_private*, %struct.mon_private** %2, align 8
  %7 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %6, i32 0, i32 1
  store %struct.monwrite_hdr* %7, %struct.monwrite_hdr** %3, align 8
  %8 = load %struct.mon_private*, %struct.mon_private** %2, align 8
  %9 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %8, i32 0, i32 0
  %10 = load %struct.mon_buf*, %struct.mon_buf** %9, align 8
  store %struct.mon_buf* %10, %struct.mon_buf** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %3, align 8
  %12 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %68 [
    i32 128, label %14
    i32 129, label %29
    i32 130, label %44
  ]

14:                                               ; preds = %1
  %15 = load %struct.mon_buf*, %struct.mon_buf** %4, align 8
  %16 = getelementptr inbounds %struct.mon_buf, %struct.mon_buf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %3, align 8
  %21 = load %struct.mon_buf*, %struct.mon_buf** %4, align 8
  %22 = getelementptr inbounds %struct.mon_buf, %struct.mon_buf* %21, i32 0, i32 1
  %23 = load %struct.mon_buf*, %struct.mon_buf** %22, align 8
  %24 = load i32, i32* @APPLDATA_START_INTERVAL_REC, align 4
  %25 = call i32 @monwrite_diag(%struct.monwrite_hdr* %20, %struct.mon_buf* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.mon_buf*, %struct.mon_buf** %4, align 8
  %27 = getelementptr inbounds %struct.mon_buf, %struct.mon_buf* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %19, %14
  br label %70

29:                                               ; preds = %1
  %30 = load %struct.mon_buf*, %struct.mon_buf** %4, align 8
  %31 = getelementptr inbounds %struct.mon_buf, %struct.mon_buf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %3, align 8
  %36 = load %struct.mon_buf*, %struct.mon_buf** %4, align 8
  %37 = getelementptr inbounds %struct.mon_buf, %struct.mon_buf* %36, i32 0, i32 1
  %38 = load %struct.mon_buf*, %struct.mon_buf** %37, align 8
  %39 = load i32, i32* @APPLDATA_START_CONFIG_REC, align 4
  %40 = call i32 @monwrite_diag(%struct.monwrite_hdr* %35, %struct.mon_buf* %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load %struct.mon_buf*, %struct.mon_buf** %4, align 8
  %42 = getelementptr inbounds %struct.mon_buf, %struct.mon_buf* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %34, %29
  br label %70

44:                                               ; preds = %1
  %45 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %3, align 8
  %46 = load %struct.mon_buf*, %struct.mon_buf** %4, align 8
  %47 = getelementptr inbounds %struct.mon_buf, %struct.mon_buf* %46, i32 0, i32 1
  %48 = load %struct.mon_buf*, %struct.mon_buf** %47, align 8
  %49 = load i32, i32* @APPLDATA_GEN_EVENT_REC, align 4
  %50 = call i32 @monwrite_diag(%struct.monwrite_hdr* %45, %struct.mon_buf* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load %struct.mon_private*, %struct.mon_private** %2, align 8
  %52 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %51, i32 0, i32 0
  %53 = load %struct.mon_buf*, %struct.mon_buf** %52, align 8
  %54 = getelementptr inbounds %struct.mon_buf, %struct.mon_buf* %53, i32 0, i32 2
  %55 = call i32 @list_del(i32* %54)
  %56 = load %struct.mon_private*, %struct.mon_private** %2, align 8
  %57 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %56, i32 0, i32 0
  %58 = load %struct.mon_buf*, %struct.mon_buf** %57, align 8
  %59 = getelementptr inbounds %struct.mon_buf, %struct.mon_buf* %58, i32 0, i32 1
  %60 = load %struct.mon_buf*, %struct.mon_buf** %59, align 8
  %61 = call i32 @kfree(%struct.mon_buf* %60)
  %62 = load %struct.mon_private*, %struct.mon_private** %2, align 8
  %63 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %62, i32 0, i32 0
  %64 = load %struct.mon_buf*, %struct.mon_buf** %63, align 8
  %65 = call i32 @kfree(%struct.mon_buf* %64)
  %66 = load %struct.mon_private*, %struct.mon_private** %2, align 8
  %67 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %66, i32 0, i32 0
  store %struct.mon_buf* null, %struct.mon_buf** %67, align 8
  br label %70

68:                                               ; preds = %1
  %69 = call i32 (...) @BUG()
  br label %70

70:                                               ; preds = %68, %44, %43, %28
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @monwrite_diag(%struct.monwrite_hdr*, %struct.mon_buf*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mon_buf*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
