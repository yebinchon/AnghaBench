; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_sony-laptop.c_sony_pic_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_sony-laptop.c_sony_pic_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sony_pic_dev = type { i64 (i32, i32)*, i32, i64, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"event ([%.2x] [%.2x]) at port 0x%.4x(+0x%.2x)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@mask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"unknown event ([%.2x] [%.2x]) at port 0x%.4x(+0x%.2x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sony_pic_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_pic_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sony_pic_dev*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.sony_pic_dev*
  store %struct.sony_pic_dev* %13, %struct.sony_pic_dev** %11, align 8
  %14 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %11, align 8
  %15 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %14, i32 0, i32 3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @inb_p(i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %11, align 8
  %22 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %21, i32 0, i32 3
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %11, align 8
  %30 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %29, i32 0, i32 3
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @inb_p(i64 %34)
  store i32 %35, i32* %9, align 4
  br label %48

36:                                               ; preds = %2
  %37 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %11, align 8
  %38 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %37, i32 0, i32 3
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %11, align 8
  %44 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = call i32 @inb_p(i64 %46)
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %36, %28
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %11, align 8
  %52 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %51, i32 0, i32 3
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %11, align 8
  %58 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i64 %56, i64 %59)
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 255
  br i1 %65, label %66, label %68

66:                                               ; preds = %63, %48
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %67, i32* %3, align 4
  br label %207

68:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %164, %68
  %70 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %11, align 8
  %71 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %70, i32 0, i32 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %167

79:                                               ; preds = %69
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %11, align 8
  %82 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %81, i32 0, i32 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %80, %88
  %90 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %11, align 8
  %91 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %90, i32 0, i32 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %89, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %79
  br label %164

100:                                              ; preds = %79
  %101 = load i32, i32* @mask, align 4
  %102 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %11, align 8
  %103 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %102, i32 0, i32 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %101, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %100
  br label %164

113:                                              ; preds = %100
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %160, %113
  %115 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %11, align 8
  %116 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %115, i32 0, i32 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %163

129:                                              ; preds = %114
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %11, align 8
  %132 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %131, i32 0, i32 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %130, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %129
  %146 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %11, align 8
  %147 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %146, i32 0, i32 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %10, align 4
  br label %196

159:                                              ; preds = %129
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  br label %114

163:                                              ; preds = %114
  br label %164

164:                                              ; preds = %163, %112, %99
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %6, align 4
  br label %69

167:                                              ; preds = %69
  %168 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %11, align 8
  %169 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %168, i32 0, i32 0
  %170 = load i64 (i32, i32)*, i64 (i32, i32)** %169, align 8
  %171 = icmp ne i64 (i32, i32)* %170, null
  br i1 %171, label %172, label %182

172:                                              ; preds = %167
  %173 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %11, align 8
  %174 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %173, i32 0, i32 0
  %175 = load i64 (i32, i32)*, i64 (i32, i32)** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %8, align 4
  %178 = call i64 %175(i32 %176, i32 %177)
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %172
  %181 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %181, i32* %3, align 4
  br label %207

182:                                              ; preds = %172, %167
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %11, align 8
  %186 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %185, i32 0, i32 3
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %11, align 8
  %192 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @dprintk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %183, i32 %184, i64 %190, i64 %193)
  %195 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %195, i32* %3, align 4
  br label %207

196:                                              ; preds = %145
  %197 = load i32, i32* %10, align 4
  %198 = call i32 @sony_laptop_report_input_event(i32 %197)
  %199 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %11, align 8
  %200 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = call i32 @acpi_bus_generate_proc_event(i32 %201, i32 1, i32 %202)
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @sonypi_compat_report_event(i32 %204)
  %206 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %206, i32* %3, align 4
  br label %207

207:                                              ; preds = %196, %182, %180, %66
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i64, i64) #1

declare dso_local i32 @sony_laptop_report_input_event(i32) #1

declare dso_local i32 @acpi_bus_generate_proc_event(i32, i32, i32) #1

declare dso_local i32 @sonypi_compat_report_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
