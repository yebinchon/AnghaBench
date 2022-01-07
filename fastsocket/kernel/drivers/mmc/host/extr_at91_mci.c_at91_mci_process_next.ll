; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mci_process_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mci_process_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91mci_host = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@FL_SENT_COMMAND = common dso_local global i32 0, align 4
@FL_SENT_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91mci_host*)* @at91_mci_process_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_mci_process_next(%struct.at91mci_host* %0) #0 {
  %2 = alloca %struct.at91mci_host*, align 8
  store %struct.at91mci_host* %0, %struct.at91mci_host** %2, align 8
  %3 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %4 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @FL_SENT_COMMAND, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @FL_SENT_COMMAND, align 4
  %11 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %12 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %16 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %17 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @at91_mci_send_command(%struct.at91mci_host* %15, i64 %20)
  br label %67

22:                                               ; preds = %1
  %23 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %24 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FL_SENT_STOP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %22
  %30 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %31 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load i32, i32* @FL_SENT_STOP, align 4
  %38 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %39 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %43 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %44 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @at91_mci_send_command(%struct.at91mci_host* %42, i64 %47)
  br label %66

49:                                               ; preds = %29, %22
  %50 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %51 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %50, i32 0, i32 3
  %52 = call i32 @del_timer(i32* %51)
  %53 = call i64 (...) @cpu_is_at91rm9200()
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %57 = call i32 @at91_reset_host(%struct.at91mci_host* %56)
  br label %58

58:                                               ; preds = %55, %49
  %59 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %60 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %63 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = call i32 @mmc_request_done(i32 %61, %struct.TYPE_2__* %64)
  br label %66

66:                                               ; preds = %58, %36
  br label %67

67:                                               ; preds = %66, %9
  ret void
}

declare dso_local i32 @at91_mci_send_command(%struct.at91mci_host*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i64 @cpu_is_at91rm9200(...) #1

declare dso_local i32 @at91_reset_host(%struct.at91mci_host*) #1

declare dso_local i32 @mmc_request_done(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
