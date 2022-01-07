; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_rs_raw_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_rs_raw_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 (%struct.tty_struct.0*)* }
%struct.tty_struct.0 = type opaque
%struct.e100_serial = type { i64, i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32, i32, i64 }

@tmp_buf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"write count %i \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ldisc %i\0A\00", align 1
@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"write ret %i\0A\00", align 1
@REG_STATUS = common dso_local global i64 0, align 8
@SERIAL_DEBUG_LINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @rs_raw_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_raw_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.e100_serial*, align 8
  %11 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.e100_serial*
  store %struct.e100_serial* %15, %struct.e100_serial** %10, align 8
  %16 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %17 = icmp ne %struct.tty_struct* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.e100_serial*, %struct.e100_serial** %10, align 8
  %20 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @tmp_buf, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %18, %3
  store i32 0, i32* %4, align 4
  br label %147

28:                                               ; preds = %24
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @local_save_flags(i64 %29)
  %31 = load %struct.e100_serial*, %struct.e100_serial** %10, align 8
  %32 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @DEBUG_LOG(i64 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = call i32 @DFLOW(i32 %35)
  %37 = load %struct.e100_serial*, %struct.e100_serial** %10, align 8
  %38 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %41 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.tty_struct.0*)*, i32 (%struct.tty_struct.0*)** %42, align 8
  %44 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %45 = bitcast %struct.tty_struct* %44 to %struct.tty_struct.0*
  %46 = call i32 %43(%struct.tty_struct.0* %45)
  %47 = call i32 @DEBUG_LOG(i64 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = call i32 @DFLOW(i32 %47)
  %49 = call i32 (...) @local_irq_disable()
  br label %50

50:                                               ; preds = %73, %28
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %109

53:                                               ; preds = %50
  %54 = load %struct.e100_serial*, %struct.e100_serial** %10, align 8
  %55 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.e100_serial*, %struct.e100_serial** %10, align 8
  %59 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %63 = call i32 @CIRC_SPACE_TO_END(i32 %57, i32 %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %67, %53
  %70 = load i32, i32* %8, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %109

73:                                               ; preds = %69
  %74 = load %struct.e100_serial*, %struct.e100_serial** %10, align 8
  %75 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.e100_serial*, %struct.e100_serial** %10, align 8
  %79 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %77, %82
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @memcpy(i64 %83, i8* %84, i32 %85)
  %87 = load %struct.e100_serial*, %struct.e100_serial** %10, align 8
  %88 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %94 = sub nsw i32 %93, 1
  %95 = and i32 %92, %94
  %96 = load %struct.e100_serial*, %struct.e100_serial** %10, align 8
  %97 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i8*, i8** %6, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %6, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %7, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %9, align 4
  br label %50

109:                                              ; preds = %72, %50
  %110 = load i64, i64* %11, align 8
  %111 = call i32 @local_irq_restore(i64 %110)
  %112 = load %struct.e100_serial*, %struct.e100_serial** %10, align 8
  %113 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @DEBUG_LOG(i64 %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = call i32 @DFLOW(i32 %116)
  %118 = load %struct.e100_serial*, %struct.e100_serial** %10, align 8
  %119 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.e100_serial*, %struct.e100_serial** %10, align 8
  %123 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %121, %125
  br i1 %126, label %127, label %145

127:                                              ; preds = %109
  %128 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %129 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %145, label %132

132:                                              ; preds = %127
  %133 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %134 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %132
  %138 = load %struct.e100_serial*, %struct.e100_serial** %10, align 8
  %139 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = load %struct.e100_serial*, %struct.e100_serial** %10, align 8
  %144 = call i32 @start_transmit(%struct.e100_serial* %143)
  br label %145

145:                                              ; preds = %142, %137, %132, %127, %109
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %145, %27
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @local_save_flags(i64) #1

declare dso_local i32 @DFLOW(i32) #1

declare dso_local i32 @DEBUG_LOG(i64, i8*, i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @CIRC_SPACE_TO_END(i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @start_transmit(%struct.e100_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
