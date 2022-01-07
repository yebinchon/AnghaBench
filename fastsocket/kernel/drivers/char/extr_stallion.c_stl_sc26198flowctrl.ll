; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198flowctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198flowctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.tty_struct = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"stl_sc26198flowctrl(portp=%p,state=%x)\0A\00", align 1
@brd_lock = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@MR0 = common dso_local global i32 0, align 4
@MR0_SWFRXTX = common dso_local global i8 0, align 1
@SCCR = common dso_local global i32 0, align 4
@CR_TXSENDXON = common dso_local global i8 0, align 1
@MR0_SWFRX = common dso_local global i8 0, align 1
@CRTSCTS = common dso_local global i32 0, align 4
@MR1 = common dso_local global i32 0, align 4
@MR1_AUTORTS = common dso_local global i8 0, align 1
@IOPIOR = common dso_local global i32 0, align 4
@IOPR_RTS = common dso_local global i8 0, align 1
@CR_TXSENDXOFF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlport*, i32)* @stl_sc26198flowctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_sc26198flowctrl(%struct.stlport* %0, i32 %1) #0 {
  %3 = alloca %struct.stlport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store %struct.stlport* %0, %struct.stlport** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.stlport*, %struct.stlport** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.stlport* %8, i32 %9)
  %11 = load %struct.stlport*, %struct.stlport** %3, align 8
  %12 = icmp eq %struct.stlport* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %209

14:                                               ; preds = %2
  %15 = load %struct.stlport*, %struct.stlport** %3, align 8
  %16 = getelementptr inbounds %struct.stlport, %struct.stlport* %15, i32 0, i32 3
  %17 = call %struct.tty_struct* @tty_port_tty_get(i32* %16)
  store %struct.tty_struct* %17, %struct.tty_struct** %5, align 8
  %18 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %19 = icmp eq %struct.tty_struct* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %209

21:                                               ; preds = %14
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %22)
  %24 = load %struct.stlport*, %struct.stlport** %3, align 8
  %25 = getelementptr inbounds %struct.stlport, %struct.stlport* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.stlport*, %struct.stlport** %3, align 8
  %28 = getelementptr inbounds %struct.stlport, %struct.stlport* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @BRDENABLE(i32 %26, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %115

33:                                               ; preds = %21
  %34 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %35 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IXOFF, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %33
  %43 = load %struct.stlport*, %struct.stlport** %3, align 8
  %44 = load i32, i32* @MR0, align 4
  %45 = call zeroext i8 @stl_sc26198getreg(%struct.stlport* %43, i32 %44)
  store i8 %45, i8* %7, align 1
  %46 = load %struct.stlport*, %struct.stlport** %3, align 8
  %47 = load i32, i32* @MR0, align 4
  %48 = load i8, i8* %7, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @MR0_SWFRXTX, align 1
  %51 = zext i8 %50 to i32
  %52 = xor i32 %51, -1
  %53 = and i32 %49, %52
  %54 = trunc i32 %53 to i8
  %55 = call i32 @stl_sc26198setreg(%struct.stlport* %46, i32 %47, i8 zeroext %54)
  %56 = load %struct.stlport*, %struct.stlport** %3, align 8
  %57 = load i32, i32* @SCCR, align 4
  %58 = load i8, i8* @CR_TXSENDXON, align 1
  %59 = call i32 @stl_sc26198setreg(%struct.stlport* %56, i32 %57, i8 zeroext %58)
  %60 = load i8, i8* @MR0_SWFRX, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* %7, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %63, %61
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %7, align 1
  %66 = load %struct.stlport*, %struct.stlport** %3, align 8
  %67 = getelementptr inbounds %struct.stlport, %struct.stlport* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.stlport*, %struct.stlport** %3, align 8
  %72 = call i32 @stl_sc26198wait(%struct.stlport* %71)
  %73 = load %struct.stlport*, %struct.stlport** %3, align 8
  %74 = load i32, i32* @MR0, align 4
  %75 = load i8, i8* %7, align 1
  %76 = call i32 @stl_sc26198setreg(%struct.stlport* %73, i32 %74, i8 zeroext %75)
  br label %77

77:                                               ; preds = %42, %33
  %78 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %79 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CRTSCTS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %77
  %87 = load %struct.stlport*, %struct.stlport** %3, align 8
  %88 = load i32, i32* @MR1, align 4
  %89 = load %struct.stlport*, %struct.stlport** %3, align 8
  %90 = load i32, i32* @MR1, align 4
  %91 = call zeroext i8 @stl_sc26198getreg(%struct.stlport* %89, i32 %90)
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* @MR1_AUTORTS, align 1
  %94 = zext i8 %93 to i32
  %95 = or i32 %92, %94
  %96 = trunc i32 %95 to i8
  %97 = call i32 @stl_sc26198setreg(%struct.stlport* %87, i32 %88, i8 zeroext %96)
  %98 = load %struct.stlport*, %struct.stlport** %3, align 8
  %99 = load i32, i32* @IOPIOR, align 4
  %100 = load %struct.stlport*, %struct.stlport** %3, align 8
  %101 = load i32, i32* @IOPIOR, align 4
  %102 = call zeroext i8 @stl_sc26198getreg(%struct.stlport* %100, i32 %101)
  %103 = zext i8 %102 to i32
  %104 = load i8, i8* @IOPR_RTS, align 1
  %105 = zext i8 %104 to i32
  %106 = or i32 %103, %105
  %107 = trunc i32 %106 to i8
  %108 = call i32 @stl_sc26198setreg(%struct.stlport* %98, i32 %99, i8 zeroext %107)
  %109 = load %struct.stlport*, %struct.stlport** %3, align 8
  %110 = getelementptr inbounds %struct.stlport, %struct.stlport* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %86, %77
  br label %200

115:                                              ; preds = %21
  %116 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %117 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %116, i32 0, i32 0
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @IXOFF, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %160

124:                                              ; preds = %115
  %125 = load %struct.stlport*, %struct.stlport** %3, align 8
  %126 = load i32, i32* @MR0, align 4
  %127 = call zeroext i8 @stl_sc26198getreg(%struct.stlport* %125, i32 %126)
  store i8 %127, i8* %7, align 1
  %128 = load %struct.stlport*, %struct.stlport** %3, align 8
  %129 = load i32, i32* @MR0, align 4
  %130 = load i8, i8* %7, align 1
  %131 = zext i8 %130 to i32
  %132 = load i8, i8* @MR0_SWFRXTX, align 1
  %133 = zext i8 %132 to i32
  %134 = xor i32 %133, -1
  %135 = and i32 %131, %134
  %136 = trunc i32 %135 to i8
  %137 = call i32 @stl_sc26198setreg(%struct.stlport* %128, i32 %129, i8 zeroext %136)
  %138 = load %struct.stlport*, %struct.stlport** %3, align 8
  %139 = load i32, i32* @SCCR, align 4
  %140 = load i8, i8* @CR_TXSENDXOFF, align 1
  %141 = call i32 @stl_sc26198setreg(%struct.stlport* %138, i32 %139, i8 zeroext %140)
  %142 = load i8, i8* @MR0_SWFRX, align 1
  %143 = zext i8 %142 to i32
  %144 = xor i32 %143, -1
  %145 = load i8, i8* %7, align 1
  %146 = zext i8 %145 to i32
  %147 = and i32 %146, %144
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %7, align 1
  %149 = load %struct.stlport*, %struct.stlport** %3, align 8
  %150 = getelementptr inbounds %struct.stlport, %struct.stlport* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load %struct.stlport*, %struct.stlport** %3, align 8
  %155 = call i32 @stl_sc26198wait(%struct.stlport* %154)
  %156 = load %struct.stlport*, %struct.stlport** %3, align 8
  %157 = load i32, i32* @MR0, align 4
  %158 = load i8, i8* %7, align 1
  %159 = call i32 @stl_sc26198setreg(%struct.stlport* %156, i32 %157, i8 zeroext %158)
  br label %160

160:                                              ; preds = %124, %115
  %161 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %162 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %161, i32 0, i32 0
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @CRTSCTS, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %199

169:                                              ; preds = %160
  %170 = load %struct.stlport*, %struct.stlport** %3, align 8
  %171 = load i32, i32* @MR1, align 4
  %172 = load %struct.stlport*, %struct.stlport** %3, align 8
  %173 = load i32, i32* @MR1, align 4
  %174 = call zeroext i8 @stl_sc26198getreg(%struct.stlport* %172, i32 %173)
  %175 = zext i8 %174 to i32
  %176 = load i8, i8* @MR1_AUTORTS, align 1
  %177 = zext i8 %176 to i32
  %178 = xor i32 %177, -1
  %179 = and i32 %175, %178
  %180 = trunc i32 %179 to i8
  %181 = call i32 @stl_sc26198setreg(%struct.stlport* %170, i32 %171, i8 zeroext %180)
  %182 = load %struct.stlport*, %struct.stlport** %3, align 8
  %183 = load i32, i32* @IOPIOR, align 4
  %184 = load %struct.stlport*, %struct.stlport** %3, align 8
  %185 = load i32, i32* @IOPIOR, align 4
  %186 = call zeroext i8 @stl_sc26198getreg(%struct.stlport* %184, i32 %185)
  %187 = zext i8 %186 to i32
  %188 = load i8, i8* @IOPR_RTS, align 1
  %189 = zext i8 %188 to i32
  %190 = xor i32 %189, -1
  %191 = and i32 %187, %190
  %192 = trunc i32 %191 to i8
  %193 = call i32 @stl_sc26198setreg(%struct.stlport* %182, i32 %183, i8 zeroext %192)
  %194 = load %struct.stlport*, %struct.stlport** %3, align 8
  %195 = getelementptr inbounds %struct.stlport, %struct.stlport* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %169, %160
  br label %200

200:                                              ; preds = %199, %114
  %201 = load %struct.stlport*, %struct.stlport** %3, align 8
  %202 = getelementptr inbounds %struct.stlport, %struct.stlport* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @BRDDISABLE(i32 %203)
  %205 = load i64, i64* %6, align 8
  %206 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %205)
  %207 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %208 = call i32 @tty_kref_put(%struct.tty_struct* %207)
  br label %209

209:                                              ; preds = %200, %20, %13
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.stlport*, i32) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BRDENABLE(i32, i32) #1

declare dso_local zeroext i8 @stl_sc26198getreg(%struct.stlport*, i32) #1

declare dso_local i32 @stl_sc26198setreg(%struct.stlport*, i32, i8 zeroext) #1

declare dso_local i32 @stl_sc26198wait(%struct.stlport*) #1

declare dso_local i32 @BRDDISABLE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
