; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt2815.c_dt2815_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt2815.c_dt2815_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.comedi_lrange** }
%struct.comedi_lrange = type { i32 }
%struct.comedi_device = type { i64, i8*, %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { i32, i32, %struct.comedi_lrange**, i32, i32, i32, i32 }
%struct.comedi_devconfig = type { i64* }

@.str = private unnamed_addr constant [27 x i8] c"comedi%d: dt2815: 0x%04lx \00", align 1
@DT2815_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"dt2815\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"I/O port conflict\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_AO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@dt2815_ao_insn = common dso_local global i32 0, align 4
@dt2815_ao_insn_read = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@range_dt2815_ao_20_current = common dso_local global %struct.comedi_lrange zeroinitializer, align 4
@range_dt2815_ao_32_current = common dso_local global %struct.comedi_lrange zeroinitializer, align 4
@range_bipolar5 = common dso_local global %struct.comedi_lrange zeroinitializer, align 4
@range_unipolar5 = common dso_local global %struct.comedi_lrange zeroinitializer, align 4
@DT2815_STATUS = common dso_local global i64 0, align 8
@DT2815_DATA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c", program: 0x%x (@t=%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"dt2815: unexpected status 0x%x (@t=%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @dt2815_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt2815_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.comedi_lrange*, align 8
  %9 = alloca %struct.comedi_lrange*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %13 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %21)
  %23 = load i64, i64* %10, align 8
  %24 = load i32, i32* @DT2815_SIZE, align 4
  %25 = call i32 @request_region(i64 %23, i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %184

31:                                               ; preds = %2
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %36, align 8
  %37 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %38 = call i64 @alloc_subdevices(%struct.comedi_device* %37, i32 1)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %184

43:                                               ; preds = %31
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = call i64 @alloc_private(%struct.comedi_device* %44, i32 4)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %184

50:                                               ; preds = %43
  %51 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 2
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %52, align 8
  store %struct.comedi_subdevice* %53, %struct.comedi_subdevice** %6, align 8
  %54 = load i32, i32* @COMEDI_SUBD_AO, align 4
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %56 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @SDF_WRITABLE, align 4
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 0
  store i32 4095, i32* %61, align 8
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 1
  store i32 8, i32* %63, align 4
  %64 = load i32, i32* @dt2815_ao_insn, align 4
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %66 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @dt2815_ao_insn_read, align 4
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %69 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load %struct.comedi_lrange**, %struct.comedi_lrange*** %71, align 8
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %74 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %73, i32 0, i32 2
  store %struct.comedi_lrange** %72, %struct.comedi_lrange*** %74, align 8
  %75 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %76 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, %struct.comedi_lrange* @range_dt2815_ao_20_current, %struct.comedi_lrange* @range_dt2815_ao_32_current
  store %struct.comedi_lrange* %82, %struct.comedi_lrange** %8, align 8
  %83 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %84 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, %struct.comedi_lrange* @range_bipolar5, %struct.comedi_lrange* @range_unipolar5
  store %struct.comedi_lrange* %90, %struct.comedi_lrange** %9, align 8
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %116, %50
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 8
  br i1 %93, label %94, label %119

94:                                               ; preds = %91
  %95 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %96 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 5, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %97, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load %struct.comedi_lrange*, %struct.comedi_lrange** %8, align 8
  br label %108

106:                                              ; preds = %94
  %107 = load %struct.comedi_lrange*, %struct.comedi_lrange** %9, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi %struct.comedi_lrange* [ %105, %104 ], [ %107, %106 ]
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load %struct.comedi_lrange**, %struct.comedi_lrange*** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.comedi_lrange*, %struct.comedi_lrange** %112, i64 %114
  store %struct.comedi_lrange* %109, %struct.comedi_lrange** %115, align 8
  br label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %91

119:                                              ; preds = %91
  %120 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %121 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @DT2815_STATUS, align 8
  %124 = add i64 %122, %123
  %125 = call i32 @outb(i32 0, i64 %124)
  store i32 0, i32* %7, align 4
  br label %126

126:                                              ; preds = %179, %119
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %127, 100
  br i1 %128, label %129, label %182

129:                                              ; preds = %126
  %130 = call i32 @udelay(i32 1000)
  %131 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %132 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @DT2815_STATUS, align 8
  %135 = add i64 %133, %134
  %136 = call i32 @inb(i64 %135)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp eq i32 %137, 4
  br i1 %138, label %139, label %159

139:                                              ; preds = %129
  %140 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %141 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 4
  %144 = load i64, i64* %143, align 8
  %145 = and i64 %144, 3
  %146 = shl i64 %145, 3
  %147 = or i64 %146, 7
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %151 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @DT2815_DATA, align 8
  %154 = add i64 %152, %153
  %155 = call i32 @outb(i32 %149, i64 %154)
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %7, align 4
  %158 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %156, i32 %157)
  br label %182

159:                                              ; preds = %129
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %159
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %7, align 4
  %165 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %163, i32 %164)
  %166 = load i32, i32* %11, align 4
  %167 = and i32 %166, 96
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %162
  %170 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %171 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @DT2815_STATUS, align 8
  %174 = add i64 %172, %173
  %175 = call i32 @outb(i32 0, i64 %174)
  br label %176

176:                                              ; preds = %169, %162
  br label %177

177:                                              ; preds = %176, %159
  br label %178

178:                                              ; preds = %177
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %7, align 4
  br label %126

182:                                              ; preds = %139, %126
  %183 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %182, %47, %40, %27
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @request_region(i64, i32, i8*) #1

declare dso_local i64 @alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i64 @alloc_private(%struct.comedi_device*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
