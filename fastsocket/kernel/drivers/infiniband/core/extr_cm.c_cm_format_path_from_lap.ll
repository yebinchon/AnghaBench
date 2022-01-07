; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_format_path_from_lap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_format_path_from_lap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_id_private = type { i32, i32 }
%struct.ib_sa_path_rec = type { i32, i64, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cm_lap_msg = type { i32, i32, i32, i32, i32 }

@IB_SA_EQ = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_id_private*, %struct.ib_sa_path_rec*, %struct.cm_lap_msg*)* @cm_format_path_from_lap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_path_from_lap(%struct.cm_id_private* %0, %struct.ib_sa_path_rec* %1, %struct.cm_lap_msg* %2) #0 {
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca %struct.ib_sa_path_rec*, align 8
  %6 = alloca %struct.cm_lap_msg*, align 8
  store %struct.cm_id_private* %0, %struct.cm_id_private** %4, align 8
  store %struct.ib_sa_path_rec* %1, %struct.ib_sa_path_rec** %5, align 8
  store %struct.cm_lap_msg* %2, %struct.cm_lap_msg** %6, align 8
  %7 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %8 = call i32 @memset(%struct.ib_sa_path_rec* %7, i32 0, i32 96)
  %9 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %10 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %13 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %12, i32 0, i32 15
  store i32 %11, i32* %13, align 8
  %14 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %15 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %18 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %17, i32 0, i32 14
  store i32 %16, i32* %18, align 4
  %19 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %20 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %23 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %22, i32 0, i32 13
  store i32 %21, i32* %23, align 8
  %24 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %25 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %28 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %27, i32 0, i32 12
  store i32 %26, i32* %28, align 4
  %29 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %30 = call i32 @cm_lap_get_flow_label(%struct.cm_lap_msg* %29)
  %31 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %32 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %31, i32 0, i32 11
  store i32 %30, i32* %32, align 8
  %33 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %34 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %37 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 4
  %38 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %39 = call i32 @cm_lap_get_traffic_class(%struct.cm_lap_msg* %38)
  %40 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %41 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %43 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %45 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %48 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 4
  %49 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %50 = call i32 @cm_lap_get_sl(%struct.cm_lap_msg* %49)
  %51 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %52 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** @IB_SA_EQ, align 8
  %54 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %55 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %57 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %60 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load i8*, i8** @IB_SA_EQ, align 8
  %62 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %63 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %65 = call i32 @cm_lap_get_packet_rate(%struct.cm_lap_msg* %64)
  %66 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %67 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load i8*, i8** @IB_SA_EQ, align 8
  %69 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %70 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %72 = call i64 @cm_lap_get_local_ack_timeout(%struct.cm_lap_msg* %71)
  %73 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %74 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %76 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %82 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %83, %80
  store i64 %84, i64* %82, align 8
  ret void
}

declare dso_local i32 @memset(%struct.ib_sa_path_rec*, i32, i32) #1

declare dso_local i32 @cm_lap_get_flow_label(%struct.cm_lap_msg*) #1

declare dso_local i32 @cm_lap_get_traffic_class(%struct.cm_lap_msg*) #1

declare dso_local i32 @cm_lap_get_sl(%struct.cm_lap_msg*) #1

declare dso_local i32 @cm_lap_get_packet_rate(%struct.cm_lap_msg*) #1

declare dso_local i64 @cm_lap_get_local_ack_timeout(%struct.cm_lap_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
