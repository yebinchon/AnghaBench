; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }
%struct.sci_port = type { i64 }

@SCxSR = common dso_local global i32 0, align 4
@PORT_SCI = common dso_local global i64 0, align 8
@SCxRDR = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [13 x i8] c"frame error\0A\00", align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"parity error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sci_receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_receive_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.sci_port*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = call %struct.sci_port* @to_sci_port(%struct.uart_port* %12)
  store %struct.sci_port* %13, %struct.sci_port** %3, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.tty_struct*, %struct.tty_struct** %18, align 8
  store %struct.tty_struct* %19, %struct.tty_struct** %4, align 8
  store i32 0, i32* %7, align 4
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = load i32, i32* @SCxSR, align 4
  %22 = call i8* @sci_in(%struct.uart_port* %20, i32 %21)
  %23 = ptrtoint i8* %22 to i16
  store i16 %23, i16* %8, align 2
  %24 = load i16, i16* %8, align 2
  %25 = zext i16 %24 to i32
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = call zeroext i16 @SCxSR_RDxF(%struct.uart_port* %26)
  %28 = zext i16 %27 to i32
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  br label %175

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32, %142
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PORT_SCI, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %41 = call i32 @sci_rxroom(%struct.uart_port* %40)
  store i32 %41, i32* %6, align 4
  br label %45

42:                                               ; preds = %33
  %43 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %44 = call i32 @scif_rxroom(%struct.uart_port* %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @tty_buffer_request_room(%struct.tty_struct* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %160

52:                                               ; preds = %45
  %53 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PORT_SCI, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %52
  %59 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %60 = load i32, i32* @SCxRDR, align 4
  %61 = call i8* @sci_in(%struct.uart_port* %59, i32 %60)
  %62 = ptrtoint i8* %61 to i8
  store i8 %62, i8* %10, align 1
  %63 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %64 = load i8, i8* %10, align 1
  %65 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %63, i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %58
  %68 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %69 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67, %58
  store i32 0, i32* %6, align 4
  br label %78

73:                                               ; preds = %67
  %74 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %75 = load i8, i8* %10, align 1
  %76 = load i8, i8* @TTY_NORMAL, align 1
  %77 = call i32 @tty_insert_flip_char(%struct.tty_struct* %74, i8 signext %75, i8 zeroext %76)
  br label %78

78:                                               ; preds = %73, %72
  br label %142

79:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %138, %79
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %141

84:                                               ; preds = %80
  %85 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %86 = load i32, i32* @SCxRDR, align 4
  %87 = call i8* @sci_in(%struct.uart_port* %85, i32 %86)
  %88 = ptrtoint i8* %87 to i8
  store i8 %88, i8* %11, align 1
  %89 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %90 = load i32, i32* @SCxSR, align 4
  %91 = call i8* @sci_in(%struct.uart_port* %89, i32 %90)
  %92 = ptrtoint i8* %91 to i16
  store i16 %92, i16* %8, align 2
  %93 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %94 = load i8, i8* %11, align 1
  %95 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %93, i8 signext %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %84
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %5, align 4
  br label %138

102:                                              ; preds = %84
  %103 = load i16, i16* %8, align 2
  %104 = zext i16 %103 to i32
  %105 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %106 = call zeroext i16 @SCxSR_FER(%struct.uart_port* %105)
  %107 = zext i16 %106 to i32
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load i8, i8* @TTY_FRAME, align 1
  store i8 %111, i8* %9, align 1
  %112 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %113 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @dev_notice(i32 %114, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %133

116:                                              ; preds = %102
  %117 = load i16, i16* %8, align 2
  %118 = zext i16 %117 to i32
  %119 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %120 = call zeroext i16 @SCxSR_PER(%struct.uart_port* %119)
  %121 = zext i16 %120 to i32
  %122 = and i32 %118, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load i8, i8* @TTY_PARITY, align 1
  store i8 %125, i8* %9, align 1
  %126 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %127 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @dev_notice(i32 %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %132

130:                                              ; preds = %116
  %131 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %131, i8* %9, align 1
  br label %132

132:                                              ; preds = %130, %124
  br label %133

133:                                              ; preds = %132, %110
  %134 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %135 = load i8, i8* %11, align 1
  %136 = load i8, i8* %9, align 1
  %137 = call i32 @tty_insert_flip_char(%struct.tty_struct* %134, i8 signext %135, i8 zeroext %136)
  br label %138

138:                                              ; preds = %133, %97
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  br label %80

141:                                              ; preds = %80
  br label %142

142:                                              ; preds = %141, %78
  %143 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %144 = load i32, i32* @SCxSR, align 4
  %145 = call i8* @sci_in(%struct.uart_port* %143, i32 %144)
  %146 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %147 = load i32, i32* @SCxSR, align 4
  %148 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %149 = call i32 @SCxSR_RDxF_CLEAR(%struct.uart_port* %148)
  %150 = call i32 @sci_out(%struct.uart_port* %146, i32 %147, i32 %149)
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %156 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, %154
  store i32 %159, i32* %157, align 8
  br label %33

160:                                              ; preds = %51
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %165 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %164)
  br label %175

166:                                              ; preds = %160
  %167 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %168 = load i32, i32* @SCxSR, align 4
  %169 = call i8* @sci_in(%struct.uart_port* %167, i32 %168)
  %170 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %171 = load i32, i32* @SCxSR, align 4
  %172 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %173 = call i32 @SCxSR_RDxF_CLEAR(%struct.uart_port* %172)
  %174 = call i32 @sci_out(%struct.uart_port* %170, i32 %171, i32 %173)
  br label %175

175:                                              ; preds = %31, %166, %163
  ret void
}

declare dso_local %struct.sci_port* @to_sci_port(%struct.uart_port*) #1

declare dso_local i8* @sci_in(%struct.uart_port*, i32) #1

declare dso_local zeroext i16 @SCxSR_RDxF(%struct.uart_port*) #1

declare dso_local i32 @sci_rxroom(%struct.uart_port*) #1

declare dso_local i32 @scif_rxroom(%struct.uart_port*) #1

declare dso_local i32 @tty_buffer_request_room(%struct.tty_struct*, i32) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i8 signext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 signext, i8 zeroext) #1

declare dso_local zeroext i16 @SCxSR_FER(%struct.uart_port*) #1

declare dso_local i32 @dev_notice(i32, i8*) #1

declare dso_local zeroext i16 @SCxSR_PER(%struct.uart_port*) #1

declare dso_local i32 @sci_out(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @SCxSR_RDxF_CLEAR(%struct.uart_port*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
