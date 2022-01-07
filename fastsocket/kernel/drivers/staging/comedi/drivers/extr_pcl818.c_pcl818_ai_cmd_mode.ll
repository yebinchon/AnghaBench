; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_ai_cmd_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_ai_cmd_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32 }
%struct.comedi_device = type { i32, i64 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"pcl818_ai_cmd_mode()\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"IRQ not defined!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TRIG_ROUND_NEAREST = common dso_local global i32 0, align 4
@PCL818_CNTENABLE = common dso_local global i64 0, align 8
@INT_TYPE_AI1_INT = common dso_local global i32 0, align 4
@PCL818_CONTROL = common dso_local global i64 0, align 8
@INT_TYPE_AI3_INT = common dso_local global i32 0, align 4
@PCL818_FI_ENABLE = common dso_local global i64 0, align 8
@INT_TYPE_AI1_FIFO = common dso_local global i32 0, align 4
@INT_TYPE_AI3_FIFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"pcl818_ai_cmd_mode() end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.comedi_device*, %struct.comedi_subdevice*)* @pcl818_ai_cmd_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl818_ai_cmd_mode(i32 %0, %struct.comedi_device* %1, %struct.comedi_subdevice* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.comedi_device* %1, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %2, %struct.comedi_subdevice** %7, align 8
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.comedi_cmd* %15, %struct.comedi_cmd** %8, align 8
  %16 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %28 = call i32 @comedi_error(%struct.comedi_device* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %221

31:                                               ; preds = %21, %3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %221

39:                                               ; preds = %31
  %40 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %41 = call i32 @start_pacer(%struct.comedi_device* %40, i32 -1, i32 0, i32 0)
  %42 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 14
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 13
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @check_channel_list(%struct.comedi_device* %42, %struct.comedi_subdevice* %43, i32 %46, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ult i32 %51, 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %221

56:                                               ; preds = %39
  %57 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 14
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 13
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @setup_channel_list(%struct.comedi_device* %57, %struct.comedi_subdevice* %58, i32 %61, i32 %64, i32 %65)
  %67 = call i32 @udelay(i32 1)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 12
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 1, i32* %76, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 11
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  store i32 0, i32* %80, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 10
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 9
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %56
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %97

94:                                               ; preds = %89, %56
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  store i32 1, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %89
  %98 = load i32, i32* %5, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %120

100:                                              ; preds = %97
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %105 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %104, i32 0, i32 0
  %106 = load i32, i32* @TRIG_ROUND_NEAREST, align 4
  %107 = call i32 @i8253_cascade_ns_to_timer(i32 %103, i32* %9, i32* %10, i32* %105, i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  store i32 2, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = sdiv i32 %111, 2
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %110, %100
  %114 = load i32, i32* %10, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  store i32 2, i32* %10, align 4
  %117 = load i32, i32* %9, align 4
  %118 = sdiv i32 %117, 2
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119, %97
  %121 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %122 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @PCL818_CNTENABLE, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @outb(i32 0, i64 %125)
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  switch i32 %129, label %214 [
    i32 1, label %130
    i32 3, label %130
    i32 0, label %144
  ]

130:                                              ; preds = %120, %120
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %138 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %139 = call i32 @pcl818_ai_mode13dma_int(i32 %136, %struct.comedi_device* %137, %struct.comedi_subdevice* %138)
  br label %143

140:                                              ; preds = %130
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  br label %221

143:                                              ; preds = %135
  br label %214

144:                                              ; preds = %120
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %183, label %149

149:                                              ; preds = %144
  %150 = load i32, i32* %5, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %167

152:                                              ; preds = %149
  %153 = load i32, i32* @INT_TYPE_AI1_INT, align 4
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 6
  store i32 %153, i32* %155, align 4
  %156 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %157 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = shl i32 %158, 4
  %160 = or i32 131, %159
  %161 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %162 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @PCL818_CONTROL, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @outb(i32 %160, i64 %165)
  br label %182

167:                                              ; preds = %149
  %168 = load i32, i32* @INT_TYPE_AI3_INT, align 4
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 4
  %171 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %172 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = shl i32 %173, 4
  %175 = or i32 130, %174
  %176 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %177 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @PCL818_CONTROL, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @outb(i32 %175, i64 %180)
  br label %182

182:                                              ; preds = %167, %152
  br label %213

183:                                              ; preds = %144
  %184 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %185 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @PCL818_FI_ENABLE, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @outb(i32 1, i64 %188)
  %190 = load i32, i32* %5, align 4
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %202

192:                                              ; preds = %183
  %193 = load i32, i32* @INT_TYPE_AI1_FIFO, align 4
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 6
  store i32 %193, i32* %195, align 4
  %196 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %197 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @PCL818_CONTROL, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @outb(i32 3, i64 %200)
  br label %212

202:                                              ; preds = %183
  %203 = load i32, i32* @INT_TYPE_AI3_FIFO, align 4
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 6
  store i32 %203, i32* %205, align 4
  %206 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %207 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @PCL818_CONTROL, align 8
  %210 = add nsw i64 %208, %209
  %211 = call i32 @outb(i32 2, i64 %210)
  br label %212

212:                                              ; preds = %202, %192
  br label %213

213:                                              ; preds = %212, %182
  br label %214

214:                                              ; preds = %213, %120, %143
  %215 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %10, align 4
  %219 = call i32 @start_pacer(%struct.comedi_device* %215, i32 %216, i32 %217, i32 %218)
  %220 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %221

221:                                              ; preds = %214, %140, %53, %36, %26
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @start_pacer(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @check_channel_list(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @setup_channel_list(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i8253_cascade_ns_to_timer(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @pcl818_ai_mode13dma_int(i32, %struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
