; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_link_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_link_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.port_info = type { i64, %struct.link_config, %struct.cphy, %struct.cmac }
%struct.link_config = type { i32, i32, i32, i32 }
%struct.cphy = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.cphy*, i32*, i32*, i32*, i32*)* }
%struct.cmac = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@A_XGM_XAUI_ACT_CTRL = common dso_local global i64 0, align 8
@A_XGM_RX_CTRL = common dso_local global i64 0, align 8
@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@A_XGM_INT_STATUS = common dso_local global i64 0, align 8
@F_LINKFAULTCHANGE = common dso_local global i32 0, align 4
@SPEED_INVALID = common dso_local global i32 0, align 4
@DUPLEX_INVALID = common dso_local global i32 0, align 4
@F_TXACTENABLE = common dso_local global i32 0, align 4
@F_RXEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_link_fault(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca %struct.cmac*, align 8
  %7 = alloca %struct.cphy*, align 8
  %8 = alloca %struct.link_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.port_info* @adap2pinfo(%struct.adapter* %17, i32 %18)
  store %struct.port_info* %19, %struct.port_info** %5, align 8
  %20 = load %struct.port_info*, %struct.port_info** %5, align 8
  %21 = getelementptr inbounds %struct.port_info, %struct.port_info* %20, i32 0, i32 3
  store %struct.cmac* %21, %struct.cmac** %6, align 8
  %22 = load %struct.port_info*, %struct.port_info** %5, align 8
  %23 = getelementptr inbounds %struct.port_info, %struct.port_info* %22, i32 0, i32 2
  store %struct.cphy* %23, %struct.cphy** %7, align 8
  %24 = load %struct.port_info*, %struct.port_info** %5, align 8
  %25 = getelementptr inbounds %struct.port_info, %struct.port_info* %24, i32 0, i32 1
  store %struct.link_config* %25, %struct.link_config** %8, align 8
  %26 = load %struct.cmac*, %struct.cmac** %6, align 8
  %27 = call i32 @t3_gate_rx_traffic(%struct.cmac* %26, i32* %14, i32* %15, i32* %16)
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %2
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = call i64 @uses_xaui(%struct.adapter* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.adapter*, %struct.adapter** %3, align 8
  %39 = load i64, i64* @A_XGM_XAUI_ACT_CTRL, align 8
  %40 = load %struct.cmac*, %struct.cmac** %6, align 8
  %41 = getelementptr inbounds %struct.cmac, %struct.cmac* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = call i32 @t3_write_reg(%struct.adapter* %38, i64 %43, i32 0)
  br label %45

45:                                               ; preds = %37, %33, %2
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = load i64, i64* @A_XGM_RX_CTRL, align 8
  %48 = load %struct.cmac*, %struct.cmac** %6, align 8
  %49 = getelementptr inbounds %struct.cmac, %struct.cmac* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = call i32 @t3_write_reg(%struct.adapter* %46, i64 %51, i32 0)
  %53 = load %struct.cmac*, %struct.cmac** %6, align 8
  %54 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %55 = call i32 @t3_mac_enable(%struct.cmac* %53, i32 %54)
  %56 = load %struct.cmac*, %struct.cmac** %6, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @t3_open_rx_traffic(%struct.cmac* %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.adapter*, %struct.adapter** %3, align 8
  %62 = load i64, i64* @A_XGM_INT_STATUS, align 8
  %63 = load %struct.cmac*, %struct.cmac** %6, align 8
  %64 = getelementptr inbounds %struct.cmac, %struct.cmac* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = call i32 @t3_read_reg(%struct.adapter* %61, i64 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* @F_LINKFAULTCHANGE, align 4
  %69 = load i32, i32* %13, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %13, align 4
  %71 = load %struct.link_config*, %struct.link_config** %8, align 8
  %72 = getelementptr inbounds %struct.link_config, %struct.link_config* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %9, align 4
  %74 = load %struct.link_config*, %struct.link_config** %8, align 8
  %75 = getelementptr inbounds %struct.link_config, %struct.link_config* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %10, align 4
  %77 = load %struct.link_config*, %struct.link_config** %8, align 8
  %78 = getelementptr inbounds %struct.link_config, %struct.link_config* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %11, align 4
  %80 = load %struct.link_config*, %struct.link_config** %8, align 8
  %81 = getelementptr inbounds %struct.link_config, %struct.link_config* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %12, align 4
  %83 = load %struct.cphy*, %struct.cphy** %7, align 8
  %84 = getelementptr inbounds %struct.cphy, %struct.cphy* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32 (%struct.cphy*, i32*, i32*, i32*, i32*)*, i32 (%struct.cphy*, i32*, i32*, i32*, i32*)** %86, align 8
  %88 = load %struct.cphy*, %struct.cphy** %7, align 8
  %89 = call i32 %87(%struct.cphy* %88, i32* %9, i32* %10, i32* %11, i32* %12)
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %45
  %93 = load %struct.link_config*, %struct.link_config** %8, align 8
  %94 = getelementptr inbounds %struct.link_config, %struct.link_config* %93, i32 0, i32 0
  store i32 0, i32* %94, align 4
  %95 = load i32, i32* @SPEED_INVALID, align 4
  %96 = load %struct.link_config*, %struct.link_config** %8, align 8
  %97 = getelementptr inbounds %struct.link_config, %struct.link_config* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @DUPLEX_INVALID, align 4
  %99 = load %struct.link_config*, %struct.link_config** %8, align 8
  %100 = getelementptr inbounds %struct.link_config, %struct.link_config* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load %struct.adapter*, %struct.adapter** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @t3_os_link_fault(%struct.adapter* %101, i32 %102, i32 0)
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %92
  %107 = load %struct.cmac*, %struct.cmac** %6, align 8
  %108 = getelementptr inbounds %struct.cmac, %struct.cmac* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %106, %92
  br label %159

113:                                              ; preds = %45
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load %struct.adapter*, %struct.adapter** %3, align 8
  %118 = load i64, i64* @A_XGM_XAUI_ACT_CTRL, align 8
  %119 = load %struct.cmac*, %struct.cmac** %6, align 8
  %120 = getelementptr inbounds %struct.cmac, %struct.cmac* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %118, %121
  %123 = load i32, i32* @F_TXACTENABLE, align 4
  %124 = load i32, i32* @F_RXEN, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @t3_write_reg(%struct.adapter* %117, i64 %122, i32 %125)
  br label %127

127:                                              ; preds = %116, %113
  %128 = load %struct.port_info*, %struct.port_info** %5, align 8
  %129 = getelementptr inbounds %struct.port_info, %struct.port_info* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  %130 = load i32, i32* %9, align 4
  %131 = trunc i32 %130 to i8
  %132 = zext i8 %131 to i32
  %133 = load %struct.link_config*, %struct.link_config** %8, align 8
  %134 = getelementptr inbounds %struct.link_config, %struct.link_config* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %127
  %138 = load i32, i32* @SPEED_INVALID, align 4
  br label %141

139:                                              ; preds = %127
  %140 = load i32, i32* %10, align 4
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i32 [ %138, %137 ], [ %140, %139 ]
  %143 = load %struct.link_config*, %struct.link_config** %8, align 8
  %144 = getelementptr inbounds %struct.link_config, %struct.link_config* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = load i32, i32* @DUPLEX_INVALID, align 4
  br label %151

149:                                              ; preds = %141
  %150 = load i32, i32* %11, align 4
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i32 [ %148, %147 ], [ %150, %149 ]
  %153 = load %struct.link_config*, %struct.link_config** %8, align 8
  %154 = getelementptr inbounds %struct.link_config, %struct.link_config* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  %155 = load %struct.adapter*, %struct.adapter** %3, align 8
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @t3_os_link_fault(%struct.adapter* %155, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %151, %112
  ret void
}

declare dso_local %struct.port_info* @adap2pinfo(%struct.adapter*, i32) #1

declare dso_local i32 @t3_gate_rx_traffic(%struct.cmac*, i32*, i32*, i32*) #1

declare dso_local i64 @uses_xaui(%struct.adapter*) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i64, i32) #1

declare dso_local i32 @t3_mac_enable(%struct.cmac*, i32) #1

declare dso_local i32 @t3_open_rx_traffic(%struct.cmac*, i32, i32, i32) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i64) #1

declare dso_local i32 @t3_os_link_fault(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
