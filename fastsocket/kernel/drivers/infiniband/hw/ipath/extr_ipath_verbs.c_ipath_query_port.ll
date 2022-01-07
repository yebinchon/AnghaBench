; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_query_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64 }
%struct.ipath_ibdev = type { i32, i32, i64, i32, i32, i32, %struct.ipath_devdata* }
%struct.ipath_devdata = type { i64, i64, i32, i32, i32, i32, i64 }

@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@ipath_cvt_physportstate = common dso_local global i32* null, align 8
@ipath_mtu4096 = common dso_local global i64 0, align 8
@IB_MTU_4096 = common dso_local global i8* null, align 8
@IB_MTU_2048 = common dso_local global i8* null, align 8
@IB_MTU_1024 = common dso_local global i32 0, align 4
@IB_MTU_512 = common dso_local global i32 0, align 4
@IB_MTU_256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_attr*)* @ipath_query_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_port_attr*, align 8
  %7 = alloca %struct.ipath_ibdev*, align 8
  %8 = alloca %struct.ipath_devdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %6, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %13 = call %struct.ipath_ibdev* @to_idev(%struct.ib_device* %12)
  store %struct.ipath_ibdev* %13, %struct.ipath_ibdev** %7, align 8
  %14 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %15 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %14, i32 0, i32 6
  %16 = load %struct.ipath_devdata*, %struct.ipath_devdata** %15, align 8
  store %struct.ipath_devdata* %16, %struct.ipath_devdata** %8, align 8
  %17 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %18 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %21 = call i32 @memset(%struct.ib_port_attr* %20, i32 0, i32 112)
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i64, i64* %10, align 8
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %28 = call i64 @be16_to_cpu(i32 %27)
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi i64 [ %25, %24 ], [ %28, %26 ]
  %31 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %32 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %31, i32 0, i32 18
  store i64 %30, i64* %32, align 8
  %33 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %34 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %37 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %36, i32 0, i32 17
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %39 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %42 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %41, i32 0, i32 16
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %44 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %47 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %46, i32 0, i32 15
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %49 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %11, align 8
  %51 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @ipath_ib_linkstate(%struct.ipath_devdata* %51, i64 %52)
  %54 = add nsw i64 %53, 1
  %55 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %56 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %55, i32 0, i32 14
  store i64 %54, i64* %56, align 8
  %57 = load i32*, i32** @ipath_cvt_physportstate, align 8
  %58 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %59 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %62 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = and i64 %60, %63
  %65 = getelementptr inbounds i32, i32* %57, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %68 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %67, i32 0, i32 13
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %70 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %73 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %72, i32 0, i32 12
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %75 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %77 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %76, i32 0, i32 1
  store i32 -2147483648, i32* %77, align 4
  %78 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %79 = call i32 @ipath_get_npkeys(%struct.ipath_devdata* %78)
  %80 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %81 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %80, i32 0, i32 11
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %83 = call i64 @ipath_get_cr_errpkey(%struct.ipath_devdata* %82)
  %84 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %85 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %83, %86
  %88 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %89 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %88, i32 0, i32 10
  store i64 %87, i64* %89, align 8
  %90 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %91 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %94 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %93, i32 0, i32 9
  store i32 %92, i32* %94, align 8
  %95 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %96 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %99 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %98, i32 0, i32 8
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %101 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %104 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 8
  %105 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %106 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %105, i32 0, i32 2
  store i32 1, i32* %106, align 8
  %107 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %108 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %107, i32 0, i32 6
  store i64 0, i64* %108, align 8
  %109 = load i64, i64* @ipath_mtu4096, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %29
  %112 = load i8*, i8** @IB_MTU_4096, align 8
  br label %115

113:                                              ; preds = %29
  %114 = load i8*, i8** @IB_MTU_2048, align 8
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i8* [ %112, %111 ], [ %114, %113 ]
  %117 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %118 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %117, i32 0, i32 5
  store i8* %116, i8** %118, align 8
  %119 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %120 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  switch i32 %121, label %134 [
    i32 4096, label %122
    i32 2048, label %125
    i32 1024, label %128
    i32 512, label %130
    i32 256, label %132
  ]

122:                                              ; preds = %115
  %123 = load i8*, i8** @IB_MTU_4096, align 8
  %124 = ptrtoint i8* %123 to i32
  store i32 %124, i32* %9, align 4
  br label %137

125:                                              ; preds = %115
  %126 = load i8*, i8** @IB_MTU_2048, align 8
  %127 = ptrtoint i8* %126 to i32
  store i32 %127, i32* %9, align 4
  br label %137

128:                                              ; preds = %115
  %129 = load i32, i32* @IB_MTU_1024, align 4
  store i32 %129, i32* %9, align 4
  br label %137

130:                                              ; preds = %115
  %131 = load i32, i32* @IB_MTU_512, align 4
  store i32 %131, i32* %9, align 4
  br label %137

132:                                              ; preds = %115
  %133 = load i32, i32* @IB_MTU_256, align 4
  store i32 %133, i32* %9, align 4
  br label %137

134:                                              ; preds = %115
  %135 = load i8*, i8** @IB_MTU_2048, align 8
  %136 = ptrtoint i8* %135 to i32
  store i32 %136, i32* %9, align 4
  br label %137

137:                                              ; preds = %134, %132, %130, %128, %125, %122
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %140 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %142 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %145 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 8
  ret i32 0
}

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local i32 @memset(%struct.ib_port_attr*, i32, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @ipath_ib_linkstate(%struct.ipath_devdata*, i64) #1

declare dso_local i32 @ipath_get_npkeys(%struct.ipath_devdata*) #1

declare dso_local i64 @ipath_get_cr_errpkey(%struct.ipath_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
