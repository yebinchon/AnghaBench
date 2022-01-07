; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_complete_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_complete_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_host = type { i32 }
%struct.jmb38x_ms_host = type { i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"c control %08x\0A\00", align 1
@HOST_CONTROL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"c status %08x\0A\00", align 1
@INT_STATUS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"c hstatus %08x\0A\00", align 1
@STATUS = common dso_local global i64 0, align 8
@BLOCK = common dso_local global i64 0, align 8
@DMA_CONTROL = common dso_local global i64 0, align 8
@DMA_DATA = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@INT_STATUS_ENABLE = common dso_local global i64 0, align 8
@INT_STATUS_FIFO_RRDY = common dso_local global i32 0, align 4
@INT_STATUS_FIFO_WRDY = common dso_local global i32 0, align 4
@INT_SIGNAL_ENABLE = common dso_local global i64 0, align 8
@HOST_CONTROL_LED = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.memstick_host*, i32)* @jmb38x_ms_complete_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jmb38x_ms_complete_cmd(%struct.memstick_host* %0, i32 %1) #0 {
  %3 = alloca %struct.memstick_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jmb38x_ms_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.memstick_host* %0, %struct.memstick_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %9 = call %struct.jmb38x_ms_host* @memstick_priv(%struct.memstick_host* %8)
  store %struct.jmb38x_ms_host* %9, %struct.jmb38x_ms_host** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %11 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %10, i32 0, i32 4
  %12 = call i32 @del_timer(i32* %11)
  %13 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %14 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %13, i32 0, i32 0
  %15 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %16 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HOST_CONTROL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  %21 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %23 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %22, i32 0, i32 0
  %24 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %25 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @INT_STATUS, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  %30 = call i32 @dev_dbg(i32* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %32 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %31, i32 0, i32 0
  %33 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %34 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @STATUS, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  %39 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %41 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @STATUS, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl(i64 %44)
  %46 = and i32 %45, 255
  %47 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %48 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  %51 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %52 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BLOCK, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 0, i64 %55)
  %57 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %58 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DMA_CONTROL, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 0, i64 %61)
  %63 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %64 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @DMA_DATA, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %93

69:                                               ; preds = %2
  %70 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %71 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %70, i32 0, i32 3
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %76 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %80 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @READ, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %69
  %87 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %90

88:                                               ; preds = %69
  %89 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = call i32 @pci_unmap_sg(i32 %74, i32* %78, i32 1, i32 %91)
  br label %132

93:                                               ; preds = %2
  %94 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %95 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @INT_STATUS_ENABLE, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @readl(i64 %98)
  store i32 %99, i32* %6, align 4
  %100 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %101 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @READ, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %93
  %108 = load i32, i32* @INT_STATUS_FIFO_RRDY, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %6, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %6, align 4
  br label %117

112:                                              ; preds = %93
  %113 = load i32, i32* @INT_STATUS_FIFO_WRDY, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %6, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %112, %107
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %120 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @INT_STATUS_ENABLE, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @writel(i32 %118, i64 %123)
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %127 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @INT_SIGNAL_ENABLE, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @writel(i32 %125, i64 %130)
  br label %132

132:                                              ; preds = %117, %90
  %133 = load i32, i32* @HOST_CONTROL_LED, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %136 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @HOST_CONTROL, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @readl(i64 %139)
  %141 = and i32 %134, %140
  %142 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %143 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @HOST_CONTROL, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @writel(i32 %141, i64 %146)
  %148 = load i32, i32* %4, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %166, label %150

150:                                              ; preds = %132
  br label %151

151:                                              ; preds = %163, %150
  %152 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %153 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %154 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %153, i32 0, i32 1
  %155 = call i32 @memstick_next_req(%struct.memstick_host* %152, %struct.TYPE_4__** %154)
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %151
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %156
  %160 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %161 = call i64 @jmb38x_ms_issue_cmd(%struct.memstick_host* %160)
  %162 = icmp ne i64 %161, 0
  br label %163

163:                                              ; preds = %159, %156
  %164 = phi i1 [ false, %156 ], [ %162, %159 ]
  br i1 %164, label %151, label %165

165:                                              ; preds = %163
  br label %187

166:                                              ; preds = %132
  br label %167

167:                                              ; preds = %182, %166
  %168 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %169 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %170 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %169, i32 0, i32 1
  %171 = call i32 @memstick_next_req(%struct.memstick_host* %168, %struct.TYPE_4__** %170)
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %167
  %175 = load i32, i32* @ETIME, align 4
  %176 = sub nsw i32 0, %175
  %177 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %178 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %177, i32 0, i32 1
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 2
  store i32 %176, i32* %180, align 8
  br label %181

181:                                              ; preds = %174, %167
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  br i1 %185, label %167, label %186

186:                                              ; preds = %182
  br label %187

187:                                              ; preds = %186, %165
  ret void
}

declare dso_local %struct.jmb38x_ms_host* @memstick_priv(%struct.memstick_host*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pci_unmap_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @memstick_next_req(%struct.memstick_host*, %struct.TYPE_4__**) #1

declare dso_local i64 @jmb38x_ms_issue_cmd(%struct.memstick_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
