; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_rocket.c_rp_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_rocket.c_rp_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, %struct.TYPE_2__*, %struct.r_port* }
%struct.TYPE_2__ = type { i32 }
%struct.r_port = type { i32 }
%struct.ktermios = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"rp_set_termios\00", align 1
@CSIZE = common dso_local global i32 0, align 4
@CS5 = common dso_local global i32 0, align 4
@CS6 = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @rp_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rp_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.r_port*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 2
  %10 = load %struct.r_port*, %struct.r_port** %9, align 8
  store %struct.r_port* %10, %struct.r_port** %5, align 8
  %11 = load %struct.r_port*, %struct.r_port** %5, align 8
  %12 = call i64 @rocket_paranoia_check(%struct.r_port* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %139

15:                                               ; preds = %2
  %16 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %17 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @CSIZE, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @CS5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @CSIZE, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @CS6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %26, %15
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @CSIZE, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %38 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CSIZE, align 4
  %41 = and i32 %39, %40
  %42 = or i32 %36, %41
  %43 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %44 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %32, %26
  %48 = load i32, i32* @CMSPAR, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %51 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %49
  store i32 %55, i32* %53, align 4
  %56 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %57 = load %struct.r_port*, %struct.r_port** %5, align 8
  %58 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %59 = call i32 @configure_r_port(%struct.tty_struct* %56, %struct.r_port* %57, %struct.ktermios* %58)
  %60 = load %struct.r_port*, %struct.r_port** %5, align 8
  %61 = getelementptr inbounds %struct.r_port, %struct.r_port* %60, i32 0, i32 0
  store i32* %61, i32** %6, align 8
  %62 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %63 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CBAUD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %47
  %69 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %70 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CBAUD, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %68
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @sClrDTR(i32* %78)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @sClrRTS(i32* %80)
  br label %82

82:                                               ; preds = %77, %68, %47
  %83 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %84 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CBAUD, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %118, label %89

89:                                               ; preds = %82
  %90 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %91 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CBAUD, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %89
  %99 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %100 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %105 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CRTSCTS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %103, %98
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @sSetRTS(i32* %113)
  br label %115

115:                                              ; preds = %112, %103
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @sSetDTR(i32* %116)
  br label %118

118:                                              ; preds = %115, %89, %82
  %119 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %120 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @CRTSCTS, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %118
  %126 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %127 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %126, i32 0, i32 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @CRTSCTS, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %125
  %135 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %136 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  %137 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %138 = call i32 @rp_start(%struct.tty_struct* %137)
  br label %139

139:                                              ; preds = %14, %134, %125, %118
  ret void
}

declare dso_local i64 @rocket_paranoia_check(%struct.r_port*, i8*) #1

declare dso_local i32 @configure_r_port(%struct.tty_struct*, %struct.r_port*, %struct.ktermios*) #1

declare dso_local i32 @sClrDTR(i32*) #1

declare dso_local i32 @sClrRTS(i32*) #1

declare dso_local i32 @sSetRTS(i32*) #1

declare dso_local i32 @sSetDTR(i32*) #1

declare dso_local i32 @rp_start(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
