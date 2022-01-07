; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_net.c_dvb_net_filter_sec_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_net.c_dvb_net_filter_sec_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dmx_section_filter = type { i32*, i32*, i32*, i8* }
%struct.dvb_net_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.dmx_section_filter**)* }

@.str = private unnamed_addr constant [26 x i8] c"%s: could not get filter\0A\00", align 1
@DMX_MAX_FILTER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: filter mac=%pM\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: filter mask=%pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.dmx_section_filter**, i8**, i8**)* @dvb_net_filter_sec_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_net_filter_sec_set(%struct.net_device* %0, %struct.dmx_section_filter** %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.dmx_section_filter**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.dvb_net_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.dmx_section_filter** %1, %struct.dmx_section_filter*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.dvb_net_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.dvb_net_priv* %13, %struct.dvb_net_priv** %10, align 8
  %14 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  store %struct.dmx_section_filter* null, %struct.dmx_section_filter** %14, align 8
  %15 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %10, align 8
  %16 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_2__*, %struct.dmx_section_filter**)*, i32 (%struct.TYPE_2__*, %struct.dmx_section_filter**)** %18, align 8
  %20 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %10, align 8
  %21 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  %24 = call i32 %19(%struct.TYPE_2__* %22, %struct.dmx_section_filter** %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %185

33:                                               ; preds = %4
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = bitcast %struct.net_device* %34 to i8*
  %36 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  %37 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %36, align 8
  %38 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %37, i32 0, i32 3
  store i8* %35, i8** %38, align 8
  %39 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  %40 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %39, align 8
  %41 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @DMX_MAX_FILTER_SIZE, align 4
  %44 = call i32 @memset(i32* %42, i32 0, i32 %43)
  %45 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  %46 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %45, align 8
  %47 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @DMX_MAX_FILTER_SIZE, align 4
  %50 = call i32 @memset(i32* %48, i32 0, i32 %49)
  %51 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  %52 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %51, align 8
  %53 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @DMX_MAX_FILTER_SIZE, align 4
  %56 = call i32 @memset(i32* %54, i32 255, i32 %55)
  %57 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  %58 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %57, align 8
  %59 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 62, i32* %61, align 4
  %62 = load i8**, i8*** %8, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 5
  %64 = load i8*, i8** %63, align 8
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  %67 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %66, align 8
  %68 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  store i32 %65, i32* %70, align 4
  %71 = load i8**, i8*** %8, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 4
  %73 = load i8*, i8** %72, align 8
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  %76 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %75, align 8
  %77 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  store i32 %74, i32* %79, align 4
  %80 = load i8**, i8*** %8, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 3
  %82 = load i8*, i8** %81, align 8
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  %85 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %84, align 8
  %86 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 8
  store i32 %83, i32* %88, align 4
  %89 = load i8**, i8*** %8, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 2
  %91 = load i8*, i8** %90, align 8
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  %94 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %93, align 8
  %95 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 9
  store i32 %92, i32* %97, align 4
  %98 = load i8**, i8*** %8, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  %100 = load i8*, i8** %99, align 8
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  %103 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %102, align 8
  %104 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 10
  store i32 %101, i32* %106, align 4
  %107 = load i8**, i8*** %8, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  %112 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %111, align 8
  %113 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 11
  store i32 %110, i32* %115, align 4
  %116 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  %117 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %116, align 8
  %118 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 255, i32* %120, align 4
  %121 = load i8**, i8*** %9, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 5
  %123 = load i8*, i8** %122, align 8
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  %126 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %125, align 8
  %127 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  store i32 %124, i32* %129, align 4
  %130 = load i8**, i8*** %9, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 4
  %132 = load i8*, i8** %131, align 8
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  %135 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %134, align 8
  %136 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 4
  store i32 %133, i32* %138, align 4
  %139 = load i8**, i8*** %9, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 3
  %141 = load i8*, i8** %140, align 8
  %142 = ptrtoint i8* %141 to i32
  %143 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  %144 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %143, align 8
  %145 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 8
  store i32 %142, i32* %147, align 4
  %148 = load i8**, i8*** %9, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 2
  %150 = load i8*, i8** %149, align 8
  %151 = ptrtoint i8* %150 to i32
  %152 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  %153 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %152, align 8
  %154 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 9
  store i32 %151, i32* %156, align 4
  %157 = load i8**, i8*** %9, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 1
  %159 = load i8*, i8** %158, align 8
  %160 = ptrtoint i8* %159 to i32
  %161 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  %162 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %161, align 8
  %163 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 10
  store i32 %160, i32* %165, align 4
  %166 = load i8**, i8*** %9, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 0
  %168 = load i8*, i8** %167, align 8
  %169 = ptrtoint i8* %168 to i32
  %170 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %7, align 8
  %171 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %170, align 8
  %172 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 11
  store i32 %169, i32* %174, align 4
  %175 = load %struct.net_device*, %struct.net_device** %6, align 8
  %176 = getelementptr inbounds %struct.net_device, %struct.net_device* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i8**, i8*** %8, align 8
  %179 = call i32 @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %177, i8** %178)
  %180 = load %struct.net_device*, %struct.net_device** %6, align 8
  %181 = getelementptr inbounds %struct.net_device, %struct.net_device* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i8**, i8*** %9, align 8
  %184 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %182, i8** %183)
  store i32 0, i32* %5, align 4
  br label %185

185:                                              ; preds = %33, %27
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local %struct.dvb_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
