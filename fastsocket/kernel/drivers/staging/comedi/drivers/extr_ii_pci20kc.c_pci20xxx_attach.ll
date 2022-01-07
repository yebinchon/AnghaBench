; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ii_pci20kc.c_pci20xxx_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ii_pci20kc.c_pci20xxx_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, %union.pci20xxx_subdev_private* }
%union.pci20xxx_subdev_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.comedi_device = type { i8*, %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { i32, %union.pci20xxx_subdev_private* }
%struct.comedi_devconfig = type { i64* }
%struct.TYPE_4__ = type { i8* }

@PCI20000_MODULES = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"pci20kc\00", align 1
@PCI20000_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"comedi%d: ii_pci20kc\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c" PCI-20001 C-2A Carrier Board at base=0x%p not found !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"comedi%d:\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"ii_pci20kc: PCI-20001 C-2A at base=0x%p\0A\00", align 1
@PCI20000_OFFSET = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [31 x i8] c" PCI-20006 module in slot %d \0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c" PCI-20341 module in slot %d \0A\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"ii_pci20kc: unknown module code 0x%02x in slot %d: module disabled\0A\00", align 1
@COMEDI_SUBD_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @pci20xxx_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci20xxx_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca %union.pci20xxx_subdev_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = load i32, i32* @PCI20000_MODULES, align 4
  %13 = add nsw i32 1, %12
  %14 = call i32 @alloc_subdevices(%struct.comedi_device* %11, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %219

19:                                               ; preds = %2
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = call i32 @alloc_private(%struct.comedi_device* %20, i32 4)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %219

26:                                               ; preds = %19
  %27 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %28 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @readb(i8* %39)
  %41 = load i32, i32* @PCI20000_ID, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @PCI20000_ID, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %26
  %46 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %219

57:                                               ; preds = %26
  %58 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %59 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = ptrtoint i8* %64 to i32
  %66 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  store i8 0, i8* %6, align 1
  br label %67

67:                                               ; preds = %207, %57
  %68 = load i8, i8* %6, align 1
  %69 = zext i8 %68 to i32
  %70 = load i32, i32* @PCI20000_MODULES, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %210

72:                                               ; preds = %67
  %73 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %73, i32 0, i32 1
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %74, align 8
  %76 = load i8, i8* %6, align 1
  %77 = zext i8 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i64 %78
  store %struct.comedi_subdevice* %79, %struct.comedi_subdevice** %9, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8, i8* %6, align 1
  %84 = zext i8 %83 to i32
  %85 = add nsw i32 %84, 1
  %86 = load i8, i8* @PCI20000_OFFSET, align 1
  %87 = zext i8 %86 to i32
  %88 = mul nsw i32 %85, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr i8, i8* %82, i64 %89
  %91 = call i32 @readb(i8* %90)
  store i32 %91, i32* %8, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %93, align 8
  %95 = load i8, i8* %6, align 1
  %96 = zext i8 %95 to i32
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %union.pci20xxx_subdev_private, %union.pci20xxx_subdev_private* %94, i64 %97
  %99 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %100 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %99, i32 0, i32 1
  store %union.pci20xxx_subdev_private* %98, %union.pci20xxx_subdev_private** %100, align 8
  %101 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %102 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %101, i32 0, i32 1
  %103 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %102, align 8
  store %union.pci20xxx_subdev_private* %103, %union.pci20xxx_subdev_private** %10, align 8
  %104 = load i32, i32* %8, align 4
  switch i32 %104, label %197 [
    i32 130, label %105
    i32 129, label %151
    i32 128, label %202
  ]

105:                                              ; preds = %72
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i8, i8* %6, align 1
  %110 = zext i8 %109 to i32
  %111 = add nsw i32 %110, 1
  %112 = load i8, i8* @PCI20000_OFFSET, align 1
  %113 = zext i8 %112 to i32
  %114 = mul nsw i32 %111, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr i8, i8* %108, i64 %115
  %117 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %10, align 8
  %118 = bitcast %union.pci20xxx_subdev_private* %117 to %struct.TYPE_4__*
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i8* %116, i8** %119, align 8
  %120 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %121 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %122 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %123 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load i8, i8* %6, align 1
  %126 = zext i8 %125 to i32
  %127 = mul nsw i32 2, %126
  %128 = add nsw i32 %127, 2
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %124, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %133 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = load i8, i8* %6, align 1
  %136 = zext i8 %135 to i32
  %137 = mul nsw i32 2, %136
  %138 = add nsw i32 %137, 3
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %134, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @pci20006_init(%struct.comedi_device* %120, %struct.comedi_subdevice* %121, i64 %131, i64 %141)
  %143 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %144 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = load i8, i8* %6, align 1
  %148 = zext i8 %147 to i32
  %149 = add nsw i32 %148, 1
  %150 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %149)
  br label %206

151:                                              ; preds = %72
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i8, i8* %6, align 1
  %156 = zext i8 %155 to i32
  %157 = add nsw i32 %156, 1
  %158 = load i8, i8* @PCI20000_OFFSET, align 1
  %159 = zext i8 %158 to i32
  %160 = mul nsw i32 %157, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr i8, i8* %154, i64 %161
  %163 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %10, align 8
  %164 = bitcast %union.pci20xxx_subdev_private* %163 to %struct.TYPE_5__*
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  store i8* %162, i8** %165, align 8
  %166 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %167 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %168 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %169 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = load i8, i8* %6, align 1
  %172 = zext i8 %171 to i32
  %173 = mul nsw i32 2, %172
  %174 = add nsw i32 %173, 2
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %170, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %179 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %178, i32 0, i32 0
  %180 = load i64*, i64** %179, align 8
  %181 = load i8, i8* %6, align 1
  %182 = zext i8 %181 to i32
  %183 = mul nsw i32 2, %182
  %184 = add nsw i32 %183, 3
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %180, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @pci20341_init(%struct.comedi_device* %166, %struct.comedi_subdevice* %167, i64 %177, i64 %187)
  %189 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %190 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %191)
  %193 = load i8, i8* %6, align 1
  %194 = zext i8 %193 to i32
  %195 = add nsw i32 %194, 1
  %196 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %195)
  br label %206

197:                                              ; preds = %72
  %198 = load i32, i32* %8, align 4
  %199 = load i8, i8* %6, align 1
  %200 = zext i8 %199 to i32
  %201 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i32 %198, i32 %200)
  br label %202

202:                                              ; preds = %72, %197
  %203 = load i32, i32* @COMEDI_SUBD_UNUSED, align 4
  %204 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %205 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  br label %206

206:                                              ; preds = %202, %151, %105
  br label %207

207:                                              ; preds = %206
  %208 = load i8, i8* %6, align 1
  %209 = add i8 %208, 1
  store i8 %209, i8* %6, align 1
  br label %67

210:                                              ; preds = %67
  %211 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %212 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %213 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %212, i32 0, i32 1
  %214 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %213, align 8
  %215 = load i32, i32* @PCI20000_MODULES, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %214, i64 %216
  %218 = call i32 @pci20xxx_dio_init(%struct.comedi_device* %211, %struct.comedi_subdevice* %217)
  store i32 1, i32* %3, align 4
  br label %219

219:                                              ; preds = %210, %45, %24, %17
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local i32 @alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @alloc_private(%struct.comedi_device*, i32) #1

declare dso_local i32 @readb(i8*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @pci20006_init(%struct.comedi_device*, %struct.comedi_subdevice*, i64, i64) #1

declare dso_local i32 @pci20341_init(%struct.comedi_device*, %struct.comedi_subdevice*, i64, i64) #1

declare dso_local i32 @pci20xxx_dio_init(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
