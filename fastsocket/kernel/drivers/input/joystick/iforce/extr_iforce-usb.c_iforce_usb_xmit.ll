; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-usb.c_iforce_usb_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-usb.c_iforce_usb_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iforce = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_6__*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i64, i64, i8* }

@IFORCE_XMIT_RUNNING = common dso_local global i32 0, align 4
@XMIT_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"usb_submit_urb failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iforce_usb_xmit(%struct.iforce* %0) #0 {
  %2 = alloca %struct.iforce*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.iforce* %0, %struct.iforce** %2, align 8
  %6 = load %struct.iforce*, %struct.iforce** %2, align 8
  %7 = getelementptr inbounds %struct.iforce, %struct.iforce* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.iforce*, %struct.iforce** %2, align 8
  %11 = getelementptr inbounds %struct.iforce, %struct.iforce* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.iforce*, %struct.iforce** %2, align 8
  %15 = getelementptr inbounds %struct.iforce, %struct.iforce* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %13, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load i32, i32* @IFORCE_XMIT_RUNNING, align 4
  %21 = load %struct.iforce*, %struct.iforce** %2, align 8
  %22 = getelementptr inbounds %struct.iforce, %struct.iforce* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @clear_bit(i32 %20, i32 %23)
  %25 = load %struct.iforce*, %struct.iforce** %2, align 8
  %26 = getelementptr inbounds %struct.iforce, %struct.iforce* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  br label %168

29:                                               ; preds = %1
  %30 = load %struct.iforce*, %struct.iforce** %2, align 8
  %31 = getelementptr inbounds %struct.iforce, %struct.iforce* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.iforce*, %struct.iforce** %2, align 8
  %35 = getelementptr inbounds %struct.iforce, %struct.iforce* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = load %struct.iforce*, %struct.iforce** %2, align 8
  %41 = getelementptr inbounds %struct.iforce, %struct.iforce* %40, i32 0, i32 3
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 %39, i8* %46, align 1
  %47 = load %struct.iforce*, %struct.iforce** %2, align 8
  %48 = getelementptr inbounds %struct.iforce, %struct.iforce* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @XMIT_INC(i64 %50, i32 1)
  %52 = load %struct.iforce*, %struct.iforce** %2, align 8
  %53 = getelementptr inbounds %struct.iforce, %struct.iforce* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.iforce*, %struct.iforce** %2, align 8
  %57 = getelementptr inbounds %struct.iforce, %struct.iforce* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  store i32 %62, i32* %3, align 4
  %63 = load %struct.iforce*, %struct.iforce** %2, align 8
  %64 = getelementptr inbounds %struct.iforce, %struct.iforce* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @XMIT_INC(i64 %66, i32 1)
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  %70 = load %struct.iforce*, %struct.iforce** %2, align 8
  %71 = getelementptr inbounds %struct.iforce, %struct.iforce* %70, i32 0, i32 3
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  %74 = load %struct.iforce*, %struct.iforce** %2, align 8
  %75 = getelementptr inbounds %struct.iforce, %struct.iforce* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.iforce*, %struct.iforce** %2, align 8
  %78 = getelementptr inbounds %struct.iforce, %struct.iforce* %77, i32 0, i32 3
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i32 %76, i32* %80, align 8
  %81 = load %struct.iforce*, %struct.iforce** %2, align 8
  %82 = getelementptr inbounds %struct.iforce, %struct.iforce* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.iforce*, %struct.iforce** %2, align 8
  %86 = getelementptr inbounds %struct.iforce, %struct.iforce* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @XMIT_SIZE, align 4
  %90 = call i32 @CIRC_CNT_TO_END(i64 %84, i64 %88, i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %29
  %95 = load i32, i32* %3, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %29
  %97 = load %struct.iforce*, %struct.iforce** %2, align 8
  %98 = getelementptr inbounds %struct.iforce, %struct.iforce* %97, i32 0, i32 3
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  %103 = load %struct.iforce*, %struct.iforce** %2, align 8
  %104 = getelementptr inbounds %struct.iforce, %struct.iforce* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.iforce*, %struct.iforce** %2, align 8
  %108 = getelementptr inbounds %struct.iforce, %struct.iforce* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i8, i8* %106, i64 %110
  %112 = bitcast i8* %111 to i32*
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @memcpy(i64 %102, i32* %112, i32 %113)
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %138

118:                                              ; preds = %96
  %119 = load %struct.iforce*, %struct.iforce** %2, align 8
  %120 = getelementptr inbounds %struct.iforce, %struct.iforce* %119, i32 0, i32 3
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %124, %126
  %128 = load %struct.iforce*, %struct.iforce** %2, align 8
  %129 = getelementptr inbounds %struct.iforce, %struct.iforce* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = bitcast i8* %132 to i32*
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* %4, align 4
  %136 = sub nsw i32 %134, %135
  %137 = call i32 @memcpy(i64 %127, i32* %133, i32 %136)
  br label %138

138:                                              ; preds = %118, %96
  %139 = load %struct.iforce*, %struct.iforce** %2, align 8
  %140 = getelementptr inbounds %struct.iforce, %struct.iforce* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @XMIT_INC(i64 %142, i32 %143)
  %145 = load %struct.iforce*, %struct.iforce** %2, align 8
  %146 = getelementptr inbounds %struct.iforce, %struct.iforce* %145, i32 0, i32 3
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load i32, i32* @GFP_ATOMIC, align 4
  %149 = call i32 @usb_submit_urb(%struct.TYPE_6__* %147, i32 %148)
  store i32 %149, i32* %3, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %138
  %152 = load i32, i32* @IFORCE_XMIT_RUNNING, align 4
  %153 = load %struct.iforce*, %struct.iforce** %2, align 8
  %154 = getelementptr inbounds %struct.iforce, %struct.iforce* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @clear_bit(i32 %152, i32 %155)
  %157 = load %struct.iforce*, %struct.iforce** %2, align 8
  %158 = getelementptr inbounds %struct.iforce, %struct.iforce* %157, i32 0, i32 1
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32, i32* %3, align 4
  %162 = call i32 @dev_warn(i32* %160, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %151, %138
  %164 = load %struct.iforce*, %struct.iforce** %2, align 8
  %165 = getelementptr inbounds %struct.iforce, %struct.iforce* %164, i32 0, i32 0
  %166 = load i64, i64* %5, align 8
  %167 = call i32 @spin_unlock_irqrestore(i32* %165, i64 %166)
  br label %168

168:                                              ; preds = %163, %19
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @XMIT_INC(i64, i32) #1

declare dso_local i32 @CIRC_CNT_TO_END(i64, i64, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
