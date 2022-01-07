; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ioctl.c_change_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ioctl.c_change_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, %struct.ktermios*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.tty_struct*, %struct.ktermios*)* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.ktermios = type { i32, i8* }
%struct.tty_ldisc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.tty_struct*, %struct.ktermios*)* }

@IXON = common dso_local global i32 0, align 4
@VSTOP = common dso_local global i64 0, align 8
@VSTART = common dso_local global i64 0, align 8
@TIOCPKT_DOSTOP = common dso_local global i32 0, align 4
@TIOCPKT_NOSTOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @change_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.ktermios, align 8
  %6 = alloca %struct.tty_ldisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 2
  %15 = load %struct.ktermios*, %struct.ktermios** %14, align 8
  %16 = bitcast %struct.ktermios* %5 to i8*
  %17 = bitcast %struct.ktermios* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 16, i1 false)
  %18 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 2
  %20 = load %struct.ktermios*, %struct.ktermios** %19, align 8
  %21 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %22 = bitcast %struct.ktermios* %20 to i8*
  %23 = bitcast %struct.ktermios* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  %24 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 2
  %26 = load %struct.ktermios*, %struct.ktermios** %25, align 8
  %27 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @unset_locked_termios(%struct.ktermios* %26, %struct.ktermios* %5, i32 %29)
  %31 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %32 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %31, i32 0, i32 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %124

35:                                               ; preds = %2
  %36 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %37 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %36, i32 0, i32 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %124

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IXON, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %5, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* @VSTOP, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 19
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %5, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i64, i64* @VSTART, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 17
  br label %64

64:                                               ; preds = %56, %48, %42
  %65 = phi i1 [ false, %48 ], [ false, %42 ], [ %63, %56 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %8, align 4
  %67 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %68 = call i64 @I_IXON(%struct.tty_struct* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %72 = call signext i8 @STOP_CHAR(%struct.tty_struct* %71)
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 19
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %77 = call signext i8 @START_CHAR(%struct.tty_struct* %76)
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 17
  br label %80

80:                                               ; preds = %75, %70, %64
  %81 = phi i1 [ false, %70 ], [ false, %64 ], [ %79, %75 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %123

86:                                               ; preds = %80
  %87 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %88 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %87, i32 0, i32 5
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @spin_lock_irqsave(i32* %88, i64 %89)
  %91 = load i32, i32* @TIOCPKT_DOSTOP, align 4
  %92 = load i32, i32* @TIOCPKT_NOSTOP, align 4
  %93 = or i32 %91, %92
  %94 = xor i32 %93, -1
  %95 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %96 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %86
  %102 = load i32, i32* @TIOCPKT_DOSTOP, align 4
  %103 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %104 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %113

107:                                              ; preds = %86
  %108 = load i32, i32* @TIOCPKT_NOSTOP, align 4
  %109 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %110 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %101
  %114 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %115 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %114, i32 0, i32 5
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %119 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %118, i32 0, i32 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = call i32 @wake_up_interruptible(i32* %121)
  br label %123

123:                                              ; preds = %113, %80
  br label %124

124:                                              ; preds = %123, %35, %2
  %125 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %126 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %125, i32 0, i32 3
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32 (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.ktermios*)** %128, align 8
  %130 = icmp ne i32 (%struct.tty_struct*, %struct.ktermios*)* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %124
  %132 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %133 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %132, i32 0, i32 3
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32 (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.ktermios*)** %135, align 8
  %137 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %138 = call i32 %136(%struct.tty_struct* %137, %struct.ktermios* %5)
  br label %144

139:                                              ; preds = %124
  %140 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %141 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %140, i32 0, i32 2
  %142 = load %struct.ktermios*, %struct.ktermios** %141, align 8
  %143 = call i32 @tty_termios_copy_hw(%struct.ktermios* %142, %struct.ktermios* %5)
  br label %144

144:                                              ; preds = %139, %131
  %145 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %146 = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* %145)
  store %struct.tty_ldisc* %146, %struct.tty_ldisc** %6, align 8
  %147 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %148 = icmp ne %struct.tty_ldisc* %147, null
  br i1 %148, label %149, label %167

149:                                              ; preds = %144
  %150 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %151 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %150, i32 0, i32 0
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32 (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.ktermios*)** %153, align 8
  %155 = icmp ne i32 (%struct.tty_struct*, %struct.ktermios*)* %154, null
  br i1 %155, label %156, label %164

156:                                              ; preds = %149
  %157 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %158 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %157, i32 0, i32 0
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32 (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.ktermios*)** %160, align 8
  %162 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %163 = call i32 %161(%struct.tty_struct* %162, %struct.ktermios* %5)
  br label %164

164:                                              ; preds = %156, %149
  %165 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %166 = call i32 @tty_ldisc_deref(%struct.tty_ldisc* %165)
  br label %167

167:                                              ; preds = %164, %144
  %168 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %169 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %168, i32 0, i32 1
  %170 = call i32 @mutex_unlock(i32* %169)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @unset_locked_termios(%struct.ktermios*, %struct.ktermios*, i32) #1

declare dso_local i64 @I_IXON(%struct.tty_struct*) #1

declare dso_local signext i8 @STOP_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @START_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @tty_termios_copy_hw(%struct.ktermios*, %struct.ktermios*) #1

declare dso_local %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct*) #1

declare dso_local i32 @tty_ldisc_deref(%struct.tty_ldisc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
