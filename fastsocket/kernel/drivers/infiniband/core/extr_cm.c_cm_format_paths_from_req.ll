; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_format_paths_from_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_format_paths_from_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_req_msg = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.ib_sa_path_rec = type { i32, i64, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@IB_SA_EQ = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_req_msg*, %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec*)* @cm_format_paths_from_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_paths_from_req(%struct.cm_req_msg* %0, %struct.ib_sa_path_rec* %1, %struct.ib_sa_path_rec* %2) #0 {
  %4 = alloca %struct.cm_req_msg*, align 8
  %5 = alloca %struct.ib_sa_path_rec*, align 8
  %6 = alloca %struct.ib_sa_path_rec*, align 8
  store %struct.cm_req_msg* %0, %struct.cm_req_msg** %4, align 8
  store %struct.ib_sa_path_rec* %1, %struct.ib_sa_path_rec** %5, align 8
  store %struct.ib_sa_path_rec* %2, %struct.ib_sa_path_rec** %6, align 8
  %7 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %8 = call i32 @memset(%struct.ib_sa_path_rec* %7, i32 0, i32 96)
  %9 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %10 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %9, i32 0, i32 12
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %13 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %12, i32 0, i32 15
  store i32 %11, i32* %13, align 4
  %14 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %15 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %14, i32 0, i32 11
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %18 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %17, i32 0, i32 14
  store i32 %16, i32* %18, align 8
  %19 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %20 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %19, i32 0, i32 10
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %23 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %22, i32 0, i32 13
  store i64 %21, i64* %23, align 8
  %24 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %25 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %28 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %27, i32 0, i32 12
  store i32 %26, i32* %28, align 4
  %29 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %30 = call i32 @cm_req_get_primary_flow_label(%struct.cm_req_msg* %29)
  %31 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %32 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %31, i32 0, i32 11
  store i32 %30, i32* %32, align 8
  %33 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %34 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %37 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 4
  %38 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %39 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %42 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %44 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %46 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %49 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 4
  %50 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %51 = call i32 @cm_req_get_primary_sl(%struct.cm_req_msg* %50)
  %52 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %53 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** @IB_SA_EQ, align 8
  %55 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %56 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %55, i32 0, i32 6
  store i8* %54, i8** %56, align 8
  %57 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %58 = call i8* @cm_req_get_path_mtu(%struct.cm_req_msg* %57)
  %59 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %60 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @IB_SA_EQ, align 8
  %62 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %63 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %65 = call i32 @cm_req_get_primary_packet_rate(%struct.cm_req_msg* %64)
  %66 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %67 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load i8*, i8** @IB_SA_EQ, align 8
  %69 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %70 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %72 = call i64 @cm_req_get_primary_local_ack_timeout(%struct.cm_req_msg* %71)
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
  %85 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %86 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %168

89:                                               ; preds = %3
  %90 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %91 = call i32 @memset(%struct.ib_sa_path_rec* %90, i32 0, i32 96)
  %92 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %93 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %96 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %95, i32 0, i32 15
  store i32 %94, i32* %96, align 4
  %97 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %98 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %101 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %100, i32 0, i32 14
  store i32 %99, i32* %101, align 8
  %102 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %103 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %106 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %105, i32 0, i32 13
  store i64 %104, i64* %106, align 8
  %107 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %108 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %111 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %110, i32 0, i32 12
  store i32 %109, i32* %111, align 4
  %112 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %113 = call i32 @cm_req_get_alt_flow_label(%struct.cm_req_msg* %112)
  %114 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %115 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %114, i32 0, i32 11
  store i32 %113, i32* %115, align 8
  %116 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %117 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %120 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %119, i32 0, i32 10
  store i32 %118, i32* %120, align 4
  %121 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %122 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %125 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %124, i32 0, i32 9
  store i32 %123, i32* %125, align 8
  %126 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %127 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %129 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %132 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %131, i32 0, i32 8
  store i32 %130, i32* %132, align 4
  %133 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %134 = call i32 @cm_req_get_alt_sl(%struct.cm_req_msg* %133)
  %135 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %136 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %135, i32 0, i32 7
  store i32 %134, i32* %136, align 8
  %137 = load i8*, i8** @IB_SA_EQ, align 8
  %138 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %139 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %138, i32 0, i32 6
  store i8* %137, i8** %139, align 8
  %140 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %141 = call i8* @cm_req_get_path_mtu(%struct.cm_req_msg* %140)
  %142 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %143 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %142, i32 0, i32 5
  store i8* %141, i8** %143, align 8
  %144 = load i8*, i8** @IB_SA_EQ, align 8
  %145 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %146 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %145, i32 0, i32 4
  store i8* %144, i8** %146, align 8
  %147 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %148 = call i32 @cm_req_get_alt_packet_rate(%struct.cm_req_msg* %147)
  %149 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %150 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  %151 = load i8*, i8** @IB_SA_EQ, align 8
  %152 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %153 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %152, i32 0, i32 2
  store i8* %151, i8** %153, align 8
  %154 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %155 = call i64 @cm_req_get_alt_local_ack_timeout(%struct.cm_req_msg* %154)
  %156 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %157 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  %158 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %159 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %160, 0
  %162 = zext i1 %161 to i32
  %163 = sext i32 %162 to i64
  %164 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %165 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = sub nsw i64 %166, %163
  store i64 %167, i64* %165, align 8
  br label %168

168:                                              ; preds = %89, %3
  ret void
}

declare dso_local i32 @memset(%struct.ib_sa_path_rec*, i32, i32) #1

declare dso_local i32 @cm_req_get_primary_flow_label(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_primary_sl(%struct.cm_req_msg*) #1

declare dso_local i8* @cm_req_get_path_mtu(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_primary_packet_rate(%struct.cm_req_msg*) #1

declare dso_local i64 @cm_req_get_primary_local_ack_timeout(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_alt_flow_label(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_alt_sl(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_alt_packet_rate(%struct.cm_req_msg*) #1

declare dso_local i64 @cm_req_get_alt_local_ack_timeout(%struct.cm_req_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
