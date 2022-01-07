; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_issue_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_issue_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.mg_host = type { i32, i64, i32 }

@MG_CMD_RD = common dso_local global i32 0, align 4
@mg_read_intr = common dso_local global i32 0, align 4
@MG_ERR_NONE = common dso_local global i32 0, align 4
@ATA_NIEN = common dso_local global i32 0, align 4
@MG_REG_DRV_CTRL = common dso_local global i32 0, align 4
@MG_CMD_WR = common dso_local global i32 0, align 4
@mg_write_intr = common dso_local global i32 0, align 4
@ATA_DRQ = common dso_local global i32 0, align 4
@MG_TMAX_WAIT_WR_DRQ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@MG_CMD_WR_CONF = common dso_local global i32 0, align 4
@MG_REG_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, %struct.mg_host*, i32, i32)* @mg_issue_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_issue_req(%struct.request* %0, %struct.mg_host* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.mg_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %6, align 8
  store %struct.mg_host* %1, %struct.mg_host** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.request*, %struct.request** %6, align 8
  %11 = call i32 @rq_data_dir(%struct.request* %10)
  switch i32 %11, label %96 [
    i32 129, label %12
    i32 128, label %27
  ]

12:                                               ; preds = %4
  %13 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @MG_CMD_RD, align 4
  %17 = call i32 @mg_out(%struct.mg_host* %13, i32 %14, i32 %15, i32 %16, i32* @mg_read_intr)
  %18 = load i32, i32* @MG_ERR_NONE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %22 = call i32 @mg_bad_rw_intr(%struct.mg_host* %21)
  %23 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %24 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  br label %98

26:                                               ; preds = %12
  br label %96

27:                                               ; preds = %4
  %28 = load i32, i32* @ATA_NIEN, align 4
  %29 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %30 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @MG_REG_DRV_CTRL, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %31, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @outb(i32 %28, i32 %35)
  %37 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @MG_CMD_WR, align 4
  %41 = call i32 @mg_out(%struct.mg_host* %37, i32 %38, i32 %39, i32 %40, i32* @mg_write_intr)
  %42 = load i32, i32* @MG_ERR_NONE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %27
  %45 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %46 = call i32 @mg_bad_rw_intr(%struct.mg_host* %45)
  %47 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %48 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %5, align 4
  br label %98

50:                                               ; preds = %27
  %51 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %52 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %51, i32 0, i32 2
  %53 = call i32 @del_timer(i32* %52)
  %54 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %55 = load i32, i32* @ATA_DRQ, align 4
  %56 = load i32, i32* @MG_TMAX_WAIT_WR_DRQ, align 4
  %57 = call i32 @mg_wait(%struct.mg_host* %54, i32 %55, i32 %56)
  %58 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %59 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @MG_REG_DRV_CTRL, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %60, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @outb(i32 0, i32 %64)
  %66 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %67 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %50
  %71 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %72 = call i32 @mg_bad_rw_intr(%struct.mg_host* %71)
  %73 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %74 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %5, align 4
  br label %98

76:                                               ; preds = %50
  %77 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %78 = load %struct.request*, %struct.request** %6, align 8
  %79 = call i32 @mg_write_one(%struct.mg_host* %77, %struct.request* %78)
  %80 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %81 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %80, i32 0, i32 2
  %82 = load i32, i32* @jiffies, align 4
  %83 = load i32, i32* @HZ, align 4
  %84 = mul nsw i32 3, %83
  %85 = add nsw i32 %82, %84
  %86 = call i32 @mod_timer(i32* %81, i32 %85)
  %87 = load i32, i32* @MG_CMD_WR_CONF, align 4
  %88 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %89 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @MG_REG_COMMAND, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %90, %92
  %94 = trunc i64 %93 to i32
  %95 = call i32 @outb(i32 %87, i32 %94)
  br label %96

96:                                               ; preds = %4, %76, %26
  %97 = load i32, i32* @MG_ERR_NONE, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %96, %70, %44, %20
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @mg_out(%struct.mg_host*, i32, i32, i32, i32*) #1

declare dso_local i32 @mg_bad_rw_intr(%struct.mg_host*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @mg_wait(%struct.mg_host*, i32, i32) #1

declare dso_local i32 @mg_write_one(%struct.mg_host*, %struct.request*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
