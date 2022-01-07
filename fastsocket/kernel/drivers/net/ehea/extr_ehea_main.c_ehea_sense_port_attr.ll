; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_sense_port_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_sense_port_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port = type { i32, i32, i32, i32, i32, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hcp_ehea_port_cb0 = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"no mem for cb0\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@H_PORT_CB0 = common dso_local global i32 0, align 4
@H_PORT_CB0_ALL = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EHEA_SPEED_10M = common dso_local global i8* null, align 8
@EHEA_SPEED_100M = common dso_local global i8* null, align 8
@EHEA_SPEED_1G = common dso_local global i8* null, align 8
@EHEA_SPEED_10G = common dso_local global i8* null, align 8
@use_mcs = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ehea_sense_port_attr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehea_sense_port_attr(%struct.ehea_port* %0) #0 {
  %2 = alloca %struct.ehea_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.hcp_ehea_port_cb0*, align 8
  store %struct.ehea_port* %0, %struct.ehea_port** %2, align 8
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call i64 @get_zeroed_page(i32 %6)
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to %struct.hcp_ehea_port_cb0*
  store %struct.hcp_ehea_port_cb0* %9, %struct.hcp_ehea_port_cb0** %5, align 8
  %10 = load %struct.hcp_ehea_port_cb0*, %struct.hcp_ehea_port_cb0** %5, align 8
  %11 = icmp ne %struct.hcp_ehea_port_cb0* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = call i32 @ehea_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %137

16:                                               ; preds = %1
  %17 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %18 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %17, i32 0, i32 7
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %23 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @H_PORT_CB0, align 4
  %26 = load i32, i32* @H_PORT_CB0_ALL, align 4
  %27 = call i32 @EHEA_BMASK_SET(i32 %26, i32 65535)
  %28 = load %struct.hcp_ehea_port_cb0*, %struct.hcp_ehea_port_cb0** %5, align 8
  %29 = call i64 @ehea_h_query_ehea_port(i32 %21, i32 %24, i32 %25, i32 %27, %struct.hcp_ehea_port_cb0* %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @H_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %16
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %123

36:                                               ; preds = %16
  %37 = load %struct.hcp_ehea_port_cb0*, %struct.hcp_ehea_port_cb0** %5, align 8
  %38 = getelementptr inbounds %struct.hcp_ehea_port_cb0, %struct.hcp_ehea_port_cb0* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 16
  %41 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %42 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %44 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %43, i32 0, i32 0
  %45 = call i32 @is_valid_ether_addr(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %36
  %48 = load i32, i32* @EADDRNOTAVAIL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %123

50:                                               ; preds = %36
  %51 = load %struct.hcp_ehea_port_cb0*, %struct.hcp_ehea_port_cb0** %5, align 8
  %52 = getelementptr inbounds %struct.hcp_ehea_port_cb0, %struct.hcp_ehea_port_cb0* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %90 [
    i32 129, label %54
    i32 130, label %60
    i32 132, label %66
    i32 133, label %72
    i32 128, label %78
    i32 131, label %84
  ]

54:                                               ; preds = %50
  %55 = load i8*, i8** @EHEA_SPEED_10M, align 8
  %56 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %57 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  %58 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %59 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %95

60:                                               ; preds = %50
  %61 = load i8*, i8** @EHEA_SPEED_10M, align 8
  %62 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %63 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %62, i32 0, i32 5
  store i8* %61, i8** %63, align 8
  %64 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %65 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %95

66:                                               ; preds = %50
  %67 = load i8*, i8** @EHEA_SPEED_100M, align 8
  %68 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %69 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %71 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  br label %95

72:                                               ; preds = %50
  %73 = load i8*, i8** @EHEA_SPEED_100M, align 8
  %74 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %75 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  %76 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %77 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  br label %95

78:                                               ; preds = %50
  %79 = load i8*, i8** @EHEA_SPEED_1G, align 8
  %80 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %81 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  %82 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %83 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  br label %95

84:                                               ; preds = %50
  %85 = load i8*, i8** @EHEA_SPEED_10G, align 8
  %86 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %87 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %89 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  br label %95

90:                                               ; preds = %50
  %91 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %92 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %91, i32 0, i32 5
  store i8* null, i8** %92, align 8
  %93 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %94 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %90, %84, %78, %72, %66, %60, %54
  %96 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %97 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %96, i32 0, i32 2
  store i32 1, i32* %97, align 8
  %98 = load %struct.hcp_ehea_port_cb0*, %struct.hcp_ehea_port_cb0** %5, align 8
  %99 = getelementptr inbounds %struct.hcp_ehea_port_cb0, %struct.hcp_ehea_port_cb0* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %102 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load i64, i64* @use_mcs, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %95
  %106 = load %struct.hcp_ehea_port_cb0*, %struct.hcp_ehea_port_cb0** %5, align 8
  %107 = getelementptr inbounds %struct.hcp_ehea_port_cb0, %struct.hcp_ehea_port_cb0* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %110 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  br label %114

111:                                              ; preds = %95
  %112 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %113 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %112, i32 0, i32 4
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %105
  %115 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %116 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %123

122:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %119, %47, %33
  %124 = load i32, i32* %3, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %123
  %127 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %128 = call i64 @netif_msg_probe(%struct.ehea_port* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126, %123
  %131 = load %struct.hcp_ehea_port_cb0*, %struct.hcp_ehea_port_cb0** %5, align 8
  %132 = call i32 @ehea_dump(%struct.hcp_ehea_port_cb0* %131, i32 12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %126
  %134 = load %struct.hcp_ehea_port_cb0*, %struct.hcp_ehea_port_cb0** %5, align 8
  %135 = ptrtoint %struct.hcp_ehea_port_cb0* %134 to i64
  %136 = call i32 @free_page(i64 %135)
  br label %137

137:                                              ; preds = %133, %12
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @ehea_error(i8*) #1

declare dso_local i64 @ehea_h_query_ehea_port(i32, i32, i32, i32, %struct.hcp_ehea_port_cb0*) #1

declare dso_local i32 @EHEA_BMASK_SET(i32, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i64 @netif_msg_probe(%struct.ehea_port*) #1

declare dso_local i32 @ehea_dump(%struct.hcp_ehea_port_cb0*, i32, i8*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
