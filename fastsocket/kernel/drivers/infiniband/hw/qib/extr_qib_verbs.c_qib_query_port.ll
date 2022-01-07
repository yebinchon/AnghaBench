; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_query_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.qib_devdata = type { i32 (i32)*, i32 (i32)* }
%struct.qib_ibport = type { i32, i32, i32, i32, i32, i32 }
%struct.qib_pportdata = type { i32, i32, i32, i32, i32, i32, i64 }

@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@QIB_GUIDS_PER_PORT = common dso_local global i32 0, align 4
@qib_ibmtu = common dso_local global i8* null, align 8
@IB_MTU_4096 = common dso_local global i8* null, align 8
@IB_MTU_2048 = common dso_local global i32 0, align 4
@IB_MTU_1024 = common dso_local global i32 0, align 4
@IB_MTU_512 = common dso_local global i32 0, align 4
@IB_MTU_256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_attr*)* @qib_query_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_port_attr*, align 8
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca %struct.qib_ibport*, align 8
  %9 = alloca %struct.qib_pportdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %6, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %13 = call %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device* %12)
  store %struct.qib_devdata* %13, %struct.qib_devdata** %7, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %14, i32 %15)
  store %struct.qib_ibport* %16, %struct.qib_ibport** %8, align 8
  %17 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %18 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %17)
  store %struct.qib_pportdata* %18, %struct.qib_pportdata** %9, align 8
  %19 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %20 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %23 = call i32 @memset(%struct.ib_port_attr* %22, i32 0, i32 96)
  %24 = load i64, i64* %11, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i64, i64* %11, align 8
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %30 = call i64 @be16_to_cpu(i32 %29)
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi i64 [ %27, %26 ], [ %30, %28 ]
  %33 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %34 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %33, i32 0, i32 18
  store i64 %32, i64* %34, align 8
  %35 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %36 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %39 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %38, i32 0, i32 17
  store i32 %37, i32* %39, align 8
  %40 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %41 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %44 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %43, i32 0, i32 16
  store i32 %42, i32* %44, align 4
  %45 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %46 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %49 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %48, i32 0, i32 15
  store i32 %47, i32* %49, align 8
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %51 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %50, i32 0, i32 1
  %52 = load i32 (i32)*, i32 (i32)** %51, align 8
  %53 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %54 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 %52(i32 %55)
  %57 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %58 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %57, i32 0, i32 14
  store i32 %56, i32* %58, align 4
  %59 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %60 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %59, i32 0, i32 0
  %61 = load i32 (i32)*, i32 (i32)** %60, align 8
  %62 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %63 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %61(i32 %64)
  %66 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %67 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %66, i32 0, i32 13
  store i32 %65, i32* %67, align 8
  %68 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %69 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %72 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %71, i32 0, i32 12
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @QIB_GUIDS_PER_PORT, align 4
  %74 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %75 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %74, i32 0, i32 11
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %77 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %76, i32 0, i32 0
  store i32 -2147483648, i32* %77, align 8
  %78 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %79 = call i32 @qib_get_npkeys(%struct.qib_devdata* %78)
  %80 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %81 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %80, i32 0, i32 10
  store i32 %79, i32* %81, align 4
  %82 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %83 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %86 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %85, i32 0, i32 9
  store i32 %84, i32* %86, align 8
  %87 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %88 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %91 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 4
  %92 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %93 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %96 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 8
  %97 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %98 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %101 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 4
  %102 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %103 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @qib_num_vls(i32 %104)
  %106 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %107 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 8
  %108 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %109 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %108, i32 0, i32 4
  store i64 0, i64* %109, align 8
  %110 = load i8*, i8** @qib_ibmtu, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %31
  %113 = load i8*, i8** @qib_ibmtu, align 8
  br label %116

114:                                              ; preds = %31
  %115 = load i8*, i8** @IB_MTU_4096, align 8
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i8* [ %113, %112 ], [ %115, %114 ]
  %118 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %119 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %118, i32 0, i32 3
  store i8* %117, i8** %119, align 8
  %120 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %121 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  switch i32 %122, label %134 [
    i32 4096, label %123
    i32 2048, label %126
    i32 1024, label %128
    i32 512, label %130
    i32 256, label %132
  ]

123:                                              ; preds = %116
  %124 = load i8*, i8** @IB_MTU_4096, align 8
  %125 = ptrtoint i8* %124 to i32
  store i32 %125, i32* %10, align 4
  br label %136

126:                                              ; preds = %116
  %127 = load i32, i32* @IB_MTU_2048, align 4
  store i32 %127, i32* %10, align 4
  br label %136

128:                                              ; preds = %116
  %129 = load i32, i32* @IB_MTU_1024, align 4
  store i32 %129, i32* %10, align 4
  br label %136

130:                                              ; preds = %116
  %131 = load i32, i32* @IB_MTU_512, align 4
  store i32 %131, i32* %10, align 4
  br label %136

132:                                              ; preds = %116
  %133 = load i32, i32* @IB_MTU_256, align 4
  store i32 %133, i32* %10, align 4
  br label %136

134:                                              ; preds = %116
  %135 = load i32, i32* @IB_MTU_2048, align 4
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %134, %132, %130, %128, %126, %123
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %139 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %141 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %144 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  ret i32 0
}

declare dso_local %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @memset(%struct.ib_port_attr*, i32, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @qib_get_npkeys(%struct.qib_devdata*) #1

declare dso_local i32 @qib_num_vls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
