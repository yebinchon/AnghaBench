; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_jr3_download_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_jr3_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.TYPE_4__*, %struct.jr3_pci_dev_private* }
%struct.TYPE_4__ = type { %struct.jr3_pci_subdev_private* }
%struct.jr3_pci_subdev_private = type { i32 }
%struct.jr3_pci_dev_private = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32* }

@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Loading#%d %4.4x bytes at %4.4x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32*, i64)* @jr3_download_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jr3_download_firmware(%struct.comedi_device* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.jr3_pci_dev_private*, align 8
  %16 = alloca %struct.jr3_pci_subdev_private*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %74, %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %75

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @read_idm_word(i32* %29, i64 %30, i32* %9, i32* %11)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ false, %25 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 65535
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, i32* %10, align 4
  br label %75

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @read_idm_word(i32* %46, i64 %47, i32* %9, i32* %12)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %45, %42
  %51 = phi i1 [ false, %42 ], [ %49, %45 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %69, %50
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = icmp ugt i32 %57, 0
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i1 [ false, %53 ], [ %58, %56 ]
  br i1 %60, label %61, label %74

61:                                               ; preds = %59
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32*, i32** %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i64 @read_idm_word(i32* %65, i64 %66, i32* %9, i32* %13)
  %68 = icmp ne i64 %67, 0
  br label %69

69:                                               ; preds = %64, %61
  %70 = phi i1 [ false, %61 ], [ %68, %64 ]
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add i32 %72, -1
  store i32 %73, i32* %11, align 4
  br label %53

74:                                               ; preds = %59
  br label %22

75:                                               ; preds = %41, %22
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @ENODATA, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %7, align 4
  br label %228

81:                                               ; preds = %75
  %82 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 1
  %84 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %83, align 8
  store %struct.jr3_pci_dev_private* %84, %struct.jr3_pci_dev_private** %15, align 8
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %224, %81
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %15, align 8
  %88 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %227

91:                                               ; preds = %85
  %92 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %93 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %98, align 8
  store %struct.jr3_pci_subdev_private* %99, %struct.jr3_pci_subdev_private** %16, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %222, %91
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %223

103:                                              ; preds = %100
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32*, i32** %5, align 8
  %108 = load i64, i64* %6, align 8
  %109 = call i64 @read_idm_word(i32* %107, i64 %108, i32* %9, i32* %17)
  %110 = icmp ne i64 %109, 0
  br label %111

111:                                              ; preds = %106, %103
  %112 = phi i1 [ false, %103 ], [ %110, %106 ]
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* %17, align 4
  %118 = icmp eq i32 %117, 65535
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %223

120:                                              ; preds = %116, %111
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i32*, i32** %5, align 8
  %125 = load i64, i64* %6, align 8
  %126 = call i64 @read_idm_word(i32* %124, i64 %125, i32* %9, i32* %18)
  %127 = icmp ne i64 %126, 0
  br label %128

128:                                              ; preds = %123, %120
  %129 = phi i1 [ false, %120 ], [ %127, %123 ]
  %130 = zext i1 %129 to i32
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %18, align 4
  %134 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %219, %128
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32, i32* %17, align 4
  %140 = icmp ugt i32 %139, 0
  br label %141

141:                                              ; preds = %138, %135
  %142 = phi i1 [ false, %135 ], [ %140, %138 ]
  br i1 %142, label %143, label %222

143:                                              ; preds = %141
  %144 = load i32, i32* %18, align 4
  %145 = and i32 %144, 16384
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %143
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32*, i32** %5, align 8
  %152 = load i64, i64* %6, align 8
  %153 = call i64 @read_idm_word(i32* %151, i64 %152, i32* %9, i32* %19)
  %154 = icmp ne i64 %153, 0
  br label %155

155:                                              ; preds = %150, %147
  %156 = phi i1 [ false, %147 ], [ %154, %150 ]
  %157 = zext i1 %156 to i32
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %17, align 4
  %159 = add i32 %158, -1
  store i32 %159, i32* %17, align 4
  br label %219

160:                                              ; preds = %143
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load i32*, i32** %5, align 8
  %165 = load i64, i64* %6, align 8
  %166 = call i64 @read_idm_word(i32* %164, i64 %165, i32* %9, i32* %20)
  %167 = icmp ne i64 %166, 0
  br label %168

168:                                              ; preds = %163, %160
  %169 = phi i1 [ false, %160 ], [ %167, %163 ]
  %170 = zext i1 %169 to i32
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load i32*, i32** %5, align 8
  %175 = load i64, i64* %6, align 8
  %176 = call i64 @read_idm_word(i32* %174, i64 %175, i32* %9, i32* %21)
  %177 = icmp ne i64 %176, 0
  br label %178

178:                                              ; preds = %173, %168
  %179 = phi i1 [ false, %168 ], [ %177, %173 ]
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %17, align 4
  %182 = sub i32 %181, 2
  store i32 %182, i32* %17, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %218

185:                                              ; preds = %178
  %186 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %15, align 8
  %187 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %186, i32 0, i32 1
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %18, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %20, align 4
  %200 = call i32 @set_u16(i32* %198, i32 %199)
  %201 = call i32 @udelay(i32 1)
  %202 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %15, align 8
  %203 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %202, i32 0, i32 1
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %205, align 8
  %207 = load i32, i32* %14, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %18, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %21, align 4
  %216 = call i32 @set_u16(i32* %214, i32 %215)
  %217 = call i32 @udelay(i32 1)
  br label %218

218:                                              ; preds = %185, %178
  br label %219

219:                                              ; preds = %218, %155
  %220 = load i32, i32* %18, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %18, align 4
  br label %135

222:                                              ; preds = %141
  br label %100

223:                                              ; preds = %119, %100
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %14, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %14, align 4
  br label %85

227:                                              ; preds = %85
  br label %228

228:                                              ; preds = %227, %78
  %229 = load i32, i32* %7, align 4
  ret i32 %229
}

declare dso_local i64 @read_idm_word(i32*, i64, i32*, i32*) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

declare dso_local i32 @set_u16(i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
