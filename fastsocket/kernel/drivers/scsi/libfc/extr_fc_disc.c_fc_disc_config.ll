; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.fc_disc, %struct.TYPE_2__ }
%struct.fc_disc = type { i8* }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@fc_disc_start = common dso_local global i64 0, align 8
@fc_disc_stop = common dso_local global i64 0, align 8
@fc_disc_stop_final = common dso_local global i64 0, align 8
@fc_disc_recv_req = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fc_disc_config(%struct.fc_lport* %0, i8* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fc_disc*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %7 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %6, i32 0, i32 0
  store %struct.fc_disc* %7, %struct.fc_disc** %5, align 8
  %8 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %9 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* @fc_disc_start, align 8
  %15 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %16 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i64 %14, i64* %17, align 8
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %20 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load i64, i64* @fc_disc_stop, align 8
  %26 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %27 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i64 %25, i64* %28, align 8
  br label %29

29:                                               ; preds = %24, %18
  %30 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %31 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* @fc_disc_stop_final, align 8
  %37 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %38 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i64 %36, i64* %39, align 8
  br label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %42 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load i64, i64* @fc_disc_recv_req, align 8
  %48 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %49 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  br label %51

51:                                               ; preds = %46, %40
  %52 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %53 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %52, i32 0, i32 0
  store %struct.fc_disc* %53, %struct.fc_disc** %5, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load %struct.fc_disc*, %struct.fc_disc** %5, align 8
  %56 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
