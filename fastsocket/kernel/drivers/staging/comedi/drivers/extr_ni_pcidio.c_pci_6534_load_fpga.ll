; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_pcidio.c_pci_6534_load_fpga.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_pcidio.c_pci_6534_load_fpga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.comedi_device = type { i32 }

@pci_6534_load_fpga.timeout = internal constant i32 1000, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@Firmware_Control_Register = common dso_local global i64 0, align 8
@Firmware_Status_Register = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"ni_pcidio: failed to load fpga %i, waiting for status 0x2\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"ni_pcidio: failed to load fpga %i, waiting for status 0x3\0A\00", align 1
@Firmware_Data_Register = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"ni_pcidio: failed to load word into fpga %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32*, i32)* @pci_6534_load_fpga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_6534_load_fpga(%struct.comedi_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = or i32 128, %13
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @Firmware_Control_Register, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writew(i32 %14, i64 %21)
  %23 = load i32, i32* %7, align 4
  %24 = or i32 192, %23
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @Firmware_Control_Register, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writew(i32 %24, i64 %31)
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %51, %4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @Firmware_Status_Register, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readw(i64 %40)
  %42 = and i32 %41, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 1000
  br label %47

47:                                               ; preds = %44, %33
  %48 = phi i1 [ false, %33 ], [ %46, %44 ]
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  %50 = call i32 @udelay(i32 1)
  br label %51

51:                                               ; preds = %49
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %33

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 1000
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %176

62:                                               ; preds = %54
  %63 = load i32, i32* %7, align 4
  %64 = or i32 128, %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @Firmware_Control_Register, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writew(i32 %64, i64 %71)
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %90, %62
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @Firmware_Status_Register, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @readw(i64 %80)
  %82 = icmp ne i32 %81, 3
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 1000
  br label %86

86:                                               ; preds = %83, %73
  %87 = phi i1 [ false, %73 ], [ %85, %83 ]
  br i1 %87, label %88, label %93

88:                                               ; preds = %86
  %89 = call i32 @udelay(i32 1)
  br label %90

90:                                               ; preds = %88
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %73

93:                                               ; preds = %86
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, 1000
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %176

101:                                              ; preds = %93
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %166, %101
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %167

107:                                              ; preds = %102
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %12, align 4
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 8
  %121 = load i32, i32* %12, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @Firmware_Data_Register, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @writew(i32 %123, i64 %130)
  store i32 0, i32* %10, align 4
  br label %132

132:                                              ; preds = %150, %107
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @Firmware_Status_Register, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @readw(i64 %139)
  %141 = and i32 %140, 2
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %132
  %144 = load i32, i32* %10, align 4
  %145 = icmp slt i32 %144, 1000
  br label %146

146:                                              ; preds = %143, %132
  %147 = phi i1 [ false, %132 ], [ %145, %143 ]
  br i1 %147, label %148, label %153

148:                                              ; preds = %146
  %149 = call i32 @udelay(i32 1)
  br label %150

150:                                              ; preds = %148
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %132

153:                                              ; preds = %146
  %154 = load i32, i32* %10, align 4
  %155 = icmp eq i32 %154, 1000
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* @EIO, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %5, align 4
  br label %176

161:                                              ; preds = %153
  %162 = call i64 (...) @need_resched()
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = call i32 (...) @schedule()
  br label %166

166:                                              ; preds = %164, %161
  br label %102

167:                                              ; preds = %102
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @Firmware_Control_Register, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @writew(i32 0, i64 %174)
  store i32 0, i32* %5, align 4
  br label %176

176:                                              ; preds = %167, %156, %96, %57
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
