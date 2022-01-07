; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_adjust_fc_host_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_adjust_fc_host_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fsf_qtcb_bottom_port = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_host_statistics*, %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port*)* @zfcp_adjust_fc_host_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_adjust_fc_host_stats(%struct.fc_host_statistics* %0, %struct.fsf_qtcb_bottom_port* %1, %struct.fsf_qtcb_bottom_port* %2) #0 {
  %4 = alloca %struct.fc_host_statistics*, align 8
  %5 = alloca %struct.fsf_qtcb_bottom_port*, align 8
  %6 = alloca %struct.fsf_qtcb_bottom_port*, align 8
  store %struct.fc_host_statistics* %0, %struct.fc_host_statistics** %4, align 8
  store %struct.fsf_qtcb_bottom_port* %1, %struct.fsf_qtcb_bottom_port** %5, align 8
  store %struct.fsf_qtcb_bottom_port* %2, %struct.fsf_qtcb_bottom_port** %6, align 8
  %7 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %8 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %7, i32 0, i32 19
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %11 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %10, i32 0, i32 19
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %15 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %14, i32 0, i32 19
  store i64 %13, i64* %15, align 8
  %16 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %17 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %16, i32 0, i32 18
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %20 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %19, i32 0, i32 18
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %24 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %23, i32 0, i32 18
  store i64 %22, i64* %24, align 8
  %25 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %26 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %25, i32 0, i32 17
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %29 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %28, i32 0, i32 17
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %33 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %32, i32 0, i32 17
  store i64 %31, i64* %33, align 8
  %34 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %35 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %34, i32 0, i32 16
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %38 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %37, i32 0, i32 16
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %42 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %41, i32 0, i32 16
  store i64 %40, i64* %42, align 8
  %43 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %44 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %43, i32 0, i32 15
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %47 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %46, i32 0, i32 15
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %51 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %50, i32 0, i32 15
  store i64 %49, i64* %51, align 8
  %52 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %53 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %52, i32 0, i32 14
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %56 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %55, i32 0, i32 14
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %54, %57
  %59 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %60 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %59, i32 0, i32 14
  store i64 %58, i64* %60, align 8
  %61 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %62 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %61, i32 0, i32 13
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %65 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %64, i32 0, i32 13
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  %68 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %69 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %68, i32 0, i32 13
  store i64 %67, i64* %69, align 8
  %70 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %71 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %70, i32 0, i32 12
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %74 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %73, i32 0, i32 12
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  %77 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %78 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %77, i32 0, i32 12
  store i64 %76, i64* %78, align 8
  %79 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %80 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %79, i32 0, i32 11
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %83 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %82, i32 0, i32 11
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %87 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %86, i32 0, i32 11
  store i64 %85, i64* %87, align 8
  %88 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %89 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %88, i32 0, i32 10
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %92 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %91, i32 0, i32 10
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %90, %93
  %95 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %96 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %95, i32 0, i32 10
  store i64 %94, i64* %96, align 8
  %97 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %98 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %97, i32 0, i32 9
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %101 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %100, i32 0, i32 9
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %99, %102
  %104 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %105 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %104, i32 0, i32 9
  store i64 %103, i64* %105, align 8
  %106 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %107 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %106, i32 0, i32 8
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %110 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %109, i32 0, i32 8
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %108, %111
  %113 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %114 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %113, i32 0, i32 8
  store i64 %112, i64* %114, align 8
  %115 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %116 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %115, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %119 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %117, %120
  %122 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %123 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %122, i32 0, i32 7
  store i64 %121, i64* %123, align 8
  %124 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %125 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %128 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %127, i32 0, i32 6
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 %126, %129
  %131 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %132 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %131, i32 0, i32 6
  store i64 %130, i64* %132, align 8
  %133 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %134 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %137 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %135, %138
  %140 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %141 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %140, i32 0, i32 5
  store i64 %139, i64* %141, align 8
  %142 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %143 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %146 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %144, %147
  %149 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %150 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %149, i32 0, i32 4
  store i64 %148, i64* %150, align 8
  %151 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %152 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %155 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = sub nsw i64 %153, %156
  %158 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %159 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %158, i32 0, i32 3
  store i64 %157, i64* %159, align 8
  %160 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %161 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %164 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = sub nsw i64 %162, %165
  %167 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %168 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %167, i32 0, i32 2
  store i64 %166, i64* %168, align 8
  %169 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %170 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %173 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = sub nsw i64 %171, %174
  %176 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %177 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %176, i32 0, i32 1
  store i64 %175, i64* %177, align 8
  %178 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %179 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %6, align 8
  %182 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = sub nsw i64 %180, %183
  %185 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %186 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
