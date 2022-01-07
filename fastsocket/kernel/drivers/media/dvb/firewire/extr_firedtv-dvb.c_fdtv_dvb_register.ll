; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-dvb.c_fdtv_dvb_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-dvb.c_fdtv_dvb_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i64, i32, i32, %struct.TYPE_13__, %struct.TYPE_16__, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__, i32*, i32, i32, %struct.firedtv* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_14__*)*, i64 }
%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }

@fdtv_model_names = common dso_local global i32* null, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@fdtv_start_feed = common dso_local global i32 0, align 4
@fdtv_stop_feed = common dso_local global i32 0, align 4
@DMX_FRONTEND_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Conditional Access Module not enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"DVB initialization failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdtv_dvb_register(%struct.firedtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.firedtv*, align 8
  %4 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %3, align 8
  %5 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %6 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %5, i32 0, i32 2
  %7 = load i32*, i32** @fdtv_model_names, align 8
  %8 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %9 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @THIS_MODULE, align 4
  %14 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %15 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @adapter_nr, align 4
  %18 = call i32 @dvb_register_adapter(i32* %6, i32 %12, i32 %13, i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %176

22:                                               ; preds = %1
  %23 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %24 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %28 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %29 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 6
  store %struct.firedtv* %27, %struct.firedtv** %30, align 8
  %31 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %32 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  store i32 16, i32* %33, align 8
  %34 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %35 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  store i32 16, i32* %36, align 4
  %37 = load i32, i32* @fdtv_start_feed, align 4
  %38 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %39 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 5
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @fdtv_stop_feed, align 4
  %42 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %43 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 4
  store i32 %41, i32* %44, align 8
  %45 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %46 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 3
  store i32* null, i32** %47, align 8
  %48 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %49 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %48, i32 0, i32 3
  %50 = call i32 @dvb_dmx_init(%struct.TYPE_13__* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %22
  br label %172

54:                                               ; preds = %22
  %55 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %56 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  store i32 16, i32* %57, align 8
  %58 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %59 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %62 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %63, align 8
  %64 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %65 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %68 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %67, i32 0, i32 4
  %69 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %70 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %69, i32 0, i32 2
  %71 = call i32 @dvb_dmxdev_init(%struct.TYPE_16__* %68, i32* %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %54
  br label %168

75:                                               ; preds = %54
  %76 = load i32, i32* @DMX_FRONTEND_0, align 4
  %77 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %78 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %81 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)** %83, align 8
  %85 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %86 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %89 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %88, i32 0, i32 5
  %90 = call i32 %84(%struct.TYPE_14__* %87, %struct.TYPE_15__* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %75
  br label %164

94:                                               ; preds = %75
  %95 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %96 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)** %98, align 8
  %100 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %101 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  %103 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %104 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %103, i32 0, i32 5
  %105 = call i32 %99(%struct.TYPE_14__* %102, %struct.TYPE_15__* %104)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  br label %152

109:                                              ; preds = %94
  %110 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %111 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %110, i32 0, i32 2
  %112 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %113 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %112, i32 0, i32 6
  %114 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %115 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 2
  %117 = call i32 @dvb_net_init(i32* %111, i32* %113, %struct.TYPE_14__* %116)
  %118 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %119 = call i32 @fdtv_frontend_init(%struct.firedtv* %118)
  %120 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %121 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %120, i32 0, i32 2
  %122 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %123 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %122, i32 0, i32 7
  %124 = call i32 @dvb_register_frontend(i32* %121, i32* %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %109
  br label %139

128:                                              ; preds = %109
  %129 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %130 = call i32 @fdtv_ca_register(%struct.firedtv* %129)
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %135 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @dev_info(i32 %136, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %138

138:                                              ; preds = %133, %128
  store i32 0, i32* %2, align 4
  br label %182

139:                                              ; preds = %127
  %140 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %141 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %140, i32 0, i32 6
  %142 = call i32 @dvb_net_release(i32* %141)
  %143 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %144 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 3
  %147 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %146, align 8
  %148 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %149 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 2
  %151 = call i32 %147(%struct.TYPE_14__* %150)
  br label %152

152:                                              ; preds = %139, %108
  %153 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %154 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 2
  %157 = load i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)** %156, align 8
  %158 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %159 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %162 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %161, i32 0, i32 5
  %163 = call i32 %157(%struct.TYPE_14__* %160, %struct.TYPE_15__* %162)
  br label %164

164:                                              ; preds = %152, %93
  %165 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %166 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %165, i32 0, i32 4
  %167 = call i32 @dvb_dmxdev_release(%struct.TYPE_16__* %166)
  br label %168

168:                                              ; preds = %164, %74
  %169 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %170 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %169, i32 0, i32 3
  %171 = call i32 @dvb_dmx_release(%struct.TYPE_13__* %170)
  br label %172

172:                                              ; preds = %168, %53
  %173 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %174 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %173, i32 0, i32 2
  %175 = call i32 @dvb_unregister_adapter(i32* %174)
  br label %176

176:                                              ; preds = %172, %21
  %177 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %178 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @dev_err(i32 %179, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %181 = load i32, i32* %4, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %176, %138
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i32 @dvb_register_adapter(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @dvb_dmx_init(%struct.TYPE_13__*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @dvb_net_init(i32*, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @fdtv_frontend_init(%struct.firedtv*) #1

declare dso_local i32 @dvb_register_frontend(i32*, i32*) #1

declare dso_local i32 @fdtv_ca_register(%struct.firedtv*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(%struct.TYPE_16__*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_13__*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
