; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_pcnet_cs.c_setup_shmem_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_pcnet_cs.c_setup_shmem_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32*, i32*, i32*, i32* }
%struct.pcmcia_device = type { i32*, %struct.net_device* }
%struct.net_device = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i64 }

@WIN_DATA_WIDTH_16 = common dso_local global i32 0, align 4
@WIN_MEMORY_TYPE_CM = common dso_local global i32 0, align 4
@WIN_ENABLE = common dso_local global i32 0, align 4
@WIN_USE_WAIT = common dso_local global i32 0, align 4
@mem_speed = common dso_local global i32 0, align 4
@RequestWindow = common dso_local global i32 0, align 4
@MapMemPage = common dso_local global i32 0, align 4
@TX_PAGES = common dso_local global i32 0, align 4
@ei_status = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@shmem_get_8390_hdr = common dso_local global i32 0, align 4
@shmem_block_input = common dso_local global i32 0, align 4
@shmem_block_output = common dso_local global i32 0, align 4
@USE_SHMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, i32, i32, i32)* @setup_shmem_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_shmem_window(%struct.pcmcia_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcmcia_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %20 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %19, i32 0, i32 1
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %10, align 8
  %22 = load %struct.net_device*, %struct.net_device** %10, align 8
  %23 = call %struct.TYPE_9__* @PRIV(%struct.net_device* %22)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %11, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 %24, %25
  %27 = shl i32 %26, 8
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp sgt i32 %28, 32768
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32 32768, i32* %15, align 4
  br label %31

31:                                               ; preds = %30, %4
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @roundup_pow_of_two(i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* @WIN_DATA_WIDTH_16, align 4
  %35 = load i32, i32* @WIN_MEMORY_TYPE_CM, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @WIN_ENABLE, align 4
  %38 = or i32 %36, %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* @WIN_USE_WAIT, align 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %15, align 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @mem_speed, align 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* @RequestWindow, align 4
  %50 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %51 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %50, i32 0, i32 0
  %52 = call i32 @pcmcia_request_window(%struct.pcmcia_device** %6, %struct.TYPE_8__* %12, i32** %51)
  %53 = call i32 @CS_CHECK(i32 %49, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 %54, 8
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %55, %56
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %15, align 4
  %62 = srem i32 %60, %61
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, %63
  store i32 %66, i32* %64, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @MapMemPage, align 4
  %69 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %70 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @pcmcia_map_mem_page(i32* %71, %struct.TYPE_10__* %13)
  %73 = call i32 @CS_CHECK(i32 %68, i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i32* @ioremap(i64 %75, i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  store i32 0, i32* %14, align 4
  br label %80

80:                                               ; preds = %98, %31
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @TX_PAGES, align 4
  %83 = shl i32 %82, 8
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %80
  %86 = load i32, i32* %14, align 4
  %87 = ashr i32 %86, 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = call i32 @__raw_writew(i32 %87, i32* %96)
  br label %98

98:                                               ; preds = %85
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 2
  store i32 %100, i32* %14, align 4
  br label %80

101:                                              ; preds = %80
  %102 = call i32 @udelay(i32 100)
  store i32 0, i32* %14, align 4
  br label %103

103:                                              ; preds = %124, %101
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* @TX_PAGES, align 4
  %106 = shl i32 %105, 8
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %103
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = call i32 @__raw_readw(i32* %117)
  %119 = load i32, i32* %14, align 4
  %120 = ashr i32 %119, 1
  %121 = icmp ne i32 %118, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %108
  br label %127

123:                                              ; preds = %108
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, 2
  store i32 %126, i32* %14, align 4
  br label %103

127:                                              ; preds = %122, %103
  %128 = load %struct.net_device*, %struct.net_device** %10, align 8
  %129 = call i32 @pcnet_reset_8390(%struct.net_device* %128)
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* @TX_PAGES, align 4
  %132 = shl i32 %131, 8
  %133 = icmp ne i32 %130, %132
  br i1 %133, label %134, label %147

134:                                              ; preds = %127
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @iounmap(i32* %137)
  %139 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %140 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @pcmcia_release_window(i32* %141)
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  store i32* null, i32** %144, align 8
  %145 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %146 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %145, i32 0, i32 0
  store i32* null, i32** %146, align 8
  br label %190

147:                                              ; preds = %127
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32* %153, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ei_status, i32 0, i32 7), align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ei_status, i32 0, i32 0), align 8
  %156 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ei_status, i32 0, i32 7), align 8
  %157 = ptrtoint i32* %156 to i64
  %158 = load %struct.net_device*, %struct.net_device** %10, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load %struct.net_device*, %struct.net_device** %10, align 8
  %161 = getelementptr inbounds %struct.net_device, %struct.net_device* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %162, %165
  %167 = load %struct.net_device*, %struct.net_device** %10, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  %169 = load i32, i32* %7, align 4
  store i32 %169, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ei_status, i32 0, i32 1), align 4
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @TX_PAGES, align 4
  %172 = add nsw i32 %170, %171
  store i32 %172, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ei_status, i32 0, i32 2), align 8
  %173 = load i32, i32* %7, align 4
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %16, align 4
  %177 = sub nsw i32 %175, %176
  %178 = ashr i32 %177, 8
  %179 = add nsw i32 %173, %178
  store i32 %179, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ei_status, i32 0, i32 3), align 4
  store i32* @shmem_get_8390_hdr, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ei_status, i32 0, i32 6), align 8
  store i32* @shmem_block_input, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ei_status, i32 0, i32 5), align 8
  store i32* @shmem_block_output, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ei_status, i32 0, i32 4), align 8
  %180 = load i32, i32* @USE_SHMEM, align 4
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  store i32 0, i32* %5, align 4
  br label %191

185:                                              ; No predecessors!
  %186 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %187 = load i32, i32* %18, align 4
  %188 = load i32, i32* %17, align 4
  %189 = call i32 @cs_error(%struct.pcmcia_device* %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %185, %134
  store i32 1, i32* %5, align 4
  br label %191

191:                                              ; preds = %190, %147
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local %struct.TYPE_9__* @PRIV(%struct.net_device*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @CS_CHECK(i32, i32) #1

declare dso_local i32 @pcmcia_request_window(%struct.pcmcia_device**, %struct.TYPE_8__*, i32**) #1

declare dso_local i32 @pcmcia_map_mem_page(i32*, %struct.TYPE_10__*) #1

declare dso_local i32* @ioremap(i64, i32) #1

declare dso_local i32 @__raw_writew(i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @__raw_readw(i32*) #1

declare dso_local i32 @pcnet_reset_8390(%struct.net_device*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @pcmcia_release_window(i32*) #1

declare dso_local i32 @cs_error(%struct.pcmcia_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
