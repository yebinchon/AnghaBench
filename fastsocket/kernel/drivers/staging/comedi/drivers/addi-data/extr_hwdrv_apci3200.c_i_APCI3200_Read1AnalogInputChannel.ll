; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3200.c_i_APCI3200_Read1AnalogInputChannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3200.c_i_APCI3200_Read1AnalogInputChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@s_BoardInfos = common dso_local global %struct.TYPE_3__* null, align 8
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@ADDIDATA_ENABLE = common dso_local global i64 0, align 8
@ADDIDATA_DISABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3200_Read1AnalogInputChannel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %36, %4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %24 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %22, %29
  %31 = add nsw i64 %30, 12
  %32 = call i32 @inl(i64 %31)
  %33 = ashr i32 %32, 19
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %19
  br label %19

37:                                               ; preds = %19
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %39 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 0, %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %50 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %48, %55
  %57 = add nsw i64 %56, 4
  %58 = call i32 @outl(i32 %45, i64 %57)
  br label %59

59:                                               ; preds = %76, %37
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %64 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %62, %69
  %71 = add nsw i64 %70, 12
  %72 = call i32 @inl(i64 %71)
  %73 = ashr i32 %72, 19
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %59
  br label %59

77:                                               ; preds = %59
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %79 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %80 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %89 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %90 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %87, %94
  %96 = add nsw i64 %95, 36
  %97 = call i32 @outl(i32 %84, i64 %96)
  br label %98

98:                                               ; preds = %115, %77
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %103 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %104 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %101, %108
  %110 = add nsw i64 %109, 12
  %111 = call i32 @inl(i64 %110)
  %112 = ashr i32 %111, 19
  %113 = and i32 %112, 1
  %114 = icmp ne i32 %113, 1
  br i1 %114, label %115, label %116

115:                                              ; preds = %98
  br label %98

116:                                              ; preds = %98
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %118 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %119 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %128 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %129 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %126, %133
  %135 = add nsw i64 %134, 32
  %136 = call i32 @outl(i32 %123, i64 %135)
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = shl i32 %138, 8
  %140 = or i32 %137, %139
  %141 = or i32 %140, 524288
  store i32 %141, i32* %11, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %143 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %144 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @ADDIDATA_ENABLE, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %116
  %152 = load i32, i32* %11, align 4
  %153 = or i32 %152, 1048576
  store i32 %153, i32* %11, align 4
  br label %154

154:                                              ; preds = %151, %116
  br label %155

155:                                              ; preds = %172, %154
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %160 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %161 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %158, %165
  %167 = add nsw i64 %166, 12
  %168 = call i32 @inl(i64 %167)
  %169 = ashr i32 %168, 19
  %170 = and i32 %169, 1
  %171 = icmp ne i32 %170, 1
  br i1 %171, label %172, label %173

172:                                              ; preds = %155
  br label %155

173:                                              ; preds = %155
  %174 = load i32, i32* %11, align 4
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %179 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %180 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %177, %184
  %186 = add nsw i64 %185, 8
  %187 = call i32 @outl(i32 %174, i64 %186)
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %189 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %190 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @ADDIDATA_DISABLE, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %232

197:                                              ; preds = %173
  br label %198

198:                                              ; preds = %213, %197
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %203 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %204 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %201, %208
  %210 = add nsw i64 %209, 20
  %211 = call i32 @inl(i64 %210)
  %212 = and i32 %211, 1
  store i32 %212, i32* %9, align 4
  br label %213

213:                                              ; preds = %198
  %214 = load i32, i32* %9, align 4
  %215 = icmp ne i32 %214, 1
  br i1 %215, label %198, label %216

216:                                              ; preds = %213
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %221 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %222 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 4
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %219, %226
  %228 = add nsw i64 %227, 28
  %229 = call i32 @inl(i64 %228)
  %230 = load i32*, i32** %8, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  store i32 %229, i32* %231, align 4
  br label %232

232:                                              ; preds = %216, %173
  ret i32 0
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
