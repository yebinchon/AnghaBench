; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-serio.c_iforce_serial_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-serio.c_iforce_serial_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iforce = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i8* }

@IFORCE_XMIT_RUNNING = common dso_local global i32 0, align 4
@IFORCE_XMIT_AGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iforce_serial_xmit(%struct.iforce* %0) #0 {
  %2 = alloca %struct.iforce*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.iforce* %0, %struct.iforce** %2, align 8
  %6 = load i32, i32* @IFORCE_XMIT_RUNNING, align 4
  %7 = load %struct.iforce*, %struct.iforce** %2, align 8
  %8 = getelementptr inbounds %struct.iforce, %struct.iforce* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @test_and_set_bit(i32 %6, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @IFORCE_XMIT_AGAIN, align 4
  %14 = load %struct.iforce*, %struct.iforce** %2, align 8
  %15 = getelementptr inbounds %struct.iforce, %struct.iforce* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @set_bit(i32 %13, i32 %16)
  br label %157

18:                                               ; preds = %1
  %19 = load %struct.iforce*, %struct.iforce** %2, align 8
  %20 = getelementptr inbounds %struct.iforce, %struct.iforce* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  br label %23

23:                                               ; preds = %146, %18
  %24 = load %struct.iforce*, %struct.iforce** %2, align 8
  %25 = getelementptr inbounds %struct.iforce, %struct.iforce* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.iforce*, %struct.iforce** %2, align 8
  %29 = getelementptr inbounds %struct.iforce, %struct.iforce* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %27, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %23
  %34 = load i32, i32* @IFORCE_XMIT_RUNNING, align 4
  %35 = load %struct.iforce*, %struct.iforce** %2, align 8
  %36 = getelementptr inbounds %struct.iforce, %struct.iforce* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clear_bit(i32 %34, i32 %37)
  %39 = load %struct.iforce*, %struct.iforce** %2, align 8
  %40 = getelementptr inbounds %struct.iforce, %struct.iforce* %39, i32 0, i32 0
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  br label %157

43:                                               ; preds = %23
  store i8 43, i8* %3, align 1
  %44 = load %struct.iforce*, %struct.iforce** %2, align 8
  %45 = getelementptr inbounds %struct.iforce, %struct.iforce* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @serio_write(i32 %46, i8 zeroext 43)
  %48 = load %struct.iforce*, %struct.iforce** %2, align 8
  %49 = getelementptr inbounds %struct.iforce, %struct.iforce* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.iforce*, %struct.iforce** %2, align 8
  %52 = getelementptr inbounds %struct.iforce, %struct.iforce* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.iforce*, %struct.iforce** %2, align 8
  %56 = getelementptr inbounds %struct.iforce, %struct.iforce* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @serio_write(i32 %50, i8 zeroext %60)
  %62 = load %struct.iforce*, %struct.iforce** %2, align 8
  %63 = getelementptr inbounds %struct.iforce, %struct.iforce* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.iforce*, %struct.iforce** %2, align 8
  %67 = getelementptr inbounds %struct.iforce, %struct.iforce* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* %3, align 1
  %74 = zext i8 %73 to i32
  %75 = xor i32 %74, %72
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %3, align 1
  %77 = load %struct.iforce*, %struct.iforce** %2, align 8
  %78 = getelementptr inbounds %struct.iforce, %struct.iforce* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @XMIT_INC(i64 %80, i32 1)
  %82 = load %struct.iforce*, %struct.iforce** %2, align 8
  %83 = getelementptr inbounds %struct.iforce, %struct.iforce* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.iforce*, %struct.iforce** %2, align 8
  %87 = getelementptr inbounds %struct.iforce, %struct.iforce* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %131, %43
  %94 = load i32, i32* %4, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %134

96:                                               ; preds = %93
  %97 = load %struct.iforce*, %struct.iforce** %2, align 8
  %98 = getelementptr inbounds %struct.iforce, %struct.iforce* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.iforce*, %struct.iforce** %2, align 8
  %101 = getelementptr inbounds %struct.iforce, %struct.iforce* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.iforce*, %struct.iforce** %2, align 8
  %105 = getelementptr inbounds %struct.iforce, %struct.iforce* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = call i32 @serio_write(i32 %99, i8 zeroext %109)
  %111 = load %struct.iforce*, %struct.iforce** %2, align 8
  %112 = getelementptr inbounds %struct.iforce, %struct.iforce* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.iforce*, %struct.iforce** %2, align 8
  %116 = getelementptr inbounds %struct.iforce, %struct.iforce* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i8, i8* %114, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = load i8, i8* %3, align 1
  %123 = zext i8 %122 to i32
  %124 = xor i32 %123, %121
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %3, align 1
  %126 = load %struct.iforce*, %struct.iforce** %2, align 8
  %127 = getelementptr inbounds %struct.iforce, %struct.iforce* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @XMIT_INC(i64 %129, i32 1)
  br label %131

131:                                              ; preds = %96
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %4, align 4
  br label %93

134:                                              ; preds = %93
  %135 = load %struct.iforce*, %struct.iforce** %2, align 8
  %136 = getelementptr inbounds %struct.iforce, %struct.iforce* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i8, i8* %3, align 1
  %139 = call i32 @serio_write(i32 %137, i8 zeroext %138)
  %140 = load i32, i32* @IFORCE_XMIT_AGAIN, align 4
  %141 = load %struct.iforce*, %struct.iforce** %2, align 8
  %142 = getelementptr inbounds %struct.iforce, %struct.iforce* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @test_and_clear_bit(i32 %140, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %134
  br label %23

147:                                              ; preds = %134
  %148 = load i32, i32* @IFORCE_XMIT_RUNNING, align 4
  %149 = load %struct.iforce*, %struct.iforce** %2, align 8
  %150 = getelementptr inbounds %struct.iforce, %struct.iforce* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @clear_bit(i32 %148, i32 %151)
  %153 = load %struct.iforce*, %struct.iforce** %2, align 8
  %154 = getelementptr inbounds %struct.iforce, %struct.iforce* %153, i32 0, i32 0
  %155 = load i64, i64* %5, align 8
  %156 = call i32 @spin_unlock_irqrestore(i32* %154, i64 %155)
  br label %157

157:                                              ; preds = %147, %33, %12
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @serio_write(i32, i8 zeroext) #1

declare dso_local i32 @XMIT_INC(i64, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
