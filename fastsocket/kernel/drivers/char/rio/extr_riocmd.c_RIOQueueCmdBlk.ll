; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_riocmd.c_RIOQueueCmdBlk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_riocmd.c_RIOQueueCmdBlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Host = type { i32, i32 (%struct.TYPE_4__*, i32, i32)*, %struct.UnixRup* }
%struct.TYPE_4__ = type { i32* }
%struct.UnixRup = type { i32, %struct.CmdBlk*, %struct.TYPE_3__*, %struct.CmdBlk* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.CmdBlk = type { i32 (i32, %struct.CmdBlk*)*, %struct.CmdBlk*, %struct.TYPE_4__, i32 }

@MAX_RUP = common dso_local global i64 0, align 8
@LINKS_PER_UNIT = common dso_local global i64 0, align 8
@RIO_DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Illegal rup number %d in RIOQueueCmdBlk\0A\00", align 1
@RIO_FAIL = common dso_local global i32 0, align 4
@TX_RUP_INACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"RUP inactive-placing command straight on. Cmd byte is 0x%x\0A\00", align 1
@TX_PACKET_READY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"RUP active - en-queing\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Rup active - command waiting\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Rup active - command pending\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Rup active - command rup not ready\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"First try to queue cmdblk %p at %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Command cmdblk %p here\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Now try to queue cmd cmdblk %p at %p\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Will queue cmdblk %p at %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RIOQueueCmdBlk(%struct.Host* %0, i16 zeroext %1, %struct.CmdBlk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Host*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.CmdBlk*, align 8
  %8 = alloca %struct.CmdBlk**, align 8
  %9 = alloca %struct.UnixRup*, align 8
  %10 = alloca i64, align 8
  store %struct.Host* %0, %struct.Host** %5, align 8
  store i16 %1, i16* %6, align 2
  store %struct.CmdBlk* %2, %struct.CmdBlk** %7, align 8
  %11 = load i16, i16* %6, align 2
  %12 = zext i16 %11 to i32
  %13 = load i64, i64* @MAX_RUP, align 8
  %14 = load i64, i64* @LINKS_PER_UNIT, align 8
  %15 = add nsw i64 %13, %14
  %16 = trunc i64 %15 to i16
  %17 = zext i16 %16 to i32
  %18 = icmp sge i32 %12, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load i32, i32* @RIO_DEBUG_CMD, align 4
  %21 = load i16, i16* %6, align 2
  %22 = zext i16 %21 to i32
  %23 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.CmdBlk*, %struct.CmdBlk** %7, align 8
  %25 = call i32 @RIOFreeCmdBlk(%struct.CmdBlk* %24)
  %26 = load i32, i32* @RIO_FAIL, align 4
  store i32 %26, i32* %4, align 4
  br label %173

27:                                               ; preds = %3
  %28 = load %struct.Host*, %struct.Host** %5, align 8
  %29 = getelementptr inbounds %struct.Host, %struct.Host* %28, i32 0, i32 2
  %30 = load %struct.UnixRup*, %struct.UnixRup** %29, align 8
  %31 = load i16, i16* %6, align 2
  %32 = zext i16 %31 to i64
  %33 = getelementptr inbounds %struct.UnixRup, %struct.UnixRup* %30, i64 %32
  store %struct.UnixRup* %33, %struct.UnixRup** %9, align 8
  %34 = load %struct.UnixRup*, %struct.UnixRup** %9, align 8
  %35 = getelementptr inbounds %struct.UnixRup, %struct.UnixRup* %34, i32 0, i32 0
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @rio_spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.UnixRup*, %struct.UnixRup** %9, align 8
  %39 = getelementptr inbounds %struct.UnixRup, %struct.UnixRup* %38, i32 0, i32 1
  %40 = load %struct.CmdBlk*, %struct.CmdBlk** %39, align 8
  %41 = icmp eq %struct.CmdBlk* %40, null
  br i1 %41, label %42, label %108

42:                                               ; preds = %27
  %43 = load %struct.UnixRup*, %struct.UnixRup** %9, align 8
  %44 = getelementptr inbounds %struct.UnixRup, %struct.UnixRup* %43, i32 0, i32 3
  %45 = load %struct.CmdBlk*, %struct.CmdBlk** %44, align 8
  %46 = icmp eq %struct.CmdBlk* %45, null
  br i1 %46, label %47, label %108

47:                                               ; preds = %42
  %48 = load %struct.UnixRup*, %struct.UnixRup** %9, align 8
  %49 = getelementptr inbounds %struct.UnixRup, %struct.UnixRup* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i64 @readw(i32* %51)
  %53 = load i64, i64* @TX_RUP_INACTIVE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %108

55:                                               ; preds = %47
  %56 = load %struct.CmdBlk*, %struct.CmdBlk** %7, align 8
  %57 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %56, i32 0, i32 0
  %58 = load i32 (i32, %struct.CmdBlk*)*, i32 (i32, %struct.CmdBlk*)** %57, align 8
  %59 = icmp ne i32 (i32, %struct.CmdBlk*)* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.CmdBlk*, %struct.CmdBlk** %7, align 8
  %62 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %61, i32 0, i32 0
  %63 = load i32 (i32, %struct.CmdBlk*)*, i32 (i32, %struct.CmdBlk*)** %62, align 8
  %64 = load %struct.CmdBlk*, %struct.CmdBlk** %7, align 8
  %65 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.CmdBlk*, %struct.CmdBlk** %7, align 8
  %68 = call i32 %63(i32 %66, %struct.CmdBlk* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %108

70:                                               ; preds = %55
  br i1 true, label %71, label %108

71:                                               ; preds = %70, %60
  %72 = load i32, i32* @RIO_DEBUG_CMD, align 4
  %73 = load %struct.CmdBlk*, %struct.CmdBlk** %7, align 8
  %74 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %72, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load %struct.Host*, %struct.Host** %5, align 8
  %81 = getelementptr inbounds %struct.Host, %struct.Host* %80, i32 0, i32 1
  %82 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %81, align 8
  %83 = load %struct.CmdBlk*, %struct.CmdBlk** %7, align 8
  %84 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %83, i32 0, i32 2
  %85 = load %struct.Host*, %struct.Host** %5, align 8
  %86 = getelementptr inbounds %struct.Host, %struct.Host* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.UnixRup*, %struct.UnixRup** %9, align 8
  %89 = getelementptr inbounds %struct.UnixRup, %struct.UnixRup* %88, i32 0, i32 2
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = call i64 @readw(i32* %91)
  %93 = call i32 @RIO_PTR(i32 %87, i64 %92)
  %94 = call i32 %82(%struct.TYPE_4__* %84, i32 %93, i32 4)
  %95 = load %struct.CmdBlk*, %struct.CmdBlk** %7, align 8
  %96 = load %struct.UnixRup*, %struct.UnixRup** %9, align 8
  %97 = getelementptr inbounds %struct.UnixRup, %struct.UnixRup* %96, i32 0, i32 3
  store %struct.CmdBlk* %95, %struct.CmdBlk** %97, align 8
  %98 = load i32, i32* @TX_PACKET_READY, align 4
  %99 = load %struct.UnixRup*, %struct.UnixRup** %9, align 8
  %100 = getelementptr inbounds %struct.UnixRup, %struct.UnixRup* %99, i32 0, i32 2
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = call i32 @writew(i32 %98, i32* %102)
  %104 = load %struct.UnixRup*, %struct.UnixRup** %9, align 8
  %105 = getelementptr inbounds %struct.UnixRup, %struct.UnixRup* %104, i32 0, i32 0
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @rio_spin_unlock_irqrestore(i32* %105, i64 %106)
  store i32 0, i32* %4, align 4
  br label %173

108:                                              ; preds = %70, %60, %47, %42, %27
  %109 = load i32, i32* @RIO_DEBUG_CMD, align 4
  %110 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %111 = load %struct.UnixRup*, %struct.UnixRup** %9, align 8
  %112 = getelementptr inbounds %struct.UnixRup, %struct.UnixRup* %111, i32 0, i32 1
  %113 = load %struct.CmdBlk*, %struct.CmdBlk** %112, align 8
  %114 = icmp ne %struct.CmdBlk* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i32, i32* @RIO_DEBUG_CMD, align 4
  %117 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %108
  %119 = load %struct.UnixRup*, %struct.UnixRup** %9, align 8
  %120 = getelementptr inbounds %struct.UnixRup, %struct.UnixRup* %119, i32 0, i32 3
  %121 = load %struct.CmdBlk*, %struct.CmdBlk** %120, align 8
  %122 = icmp ne %struct.CmdBlk* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* @RIO_DEBUG_CMD, align 4
  %125 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %124, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %118
  %127 = load %struct.UnixRup*, %struct.UnixRup** %9, align 8
  %128 = getelementptr inbounds %struct.UnixRup, %struct.UnixRup* %127, i32 0, i32 2
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = call i64 @readw(i32* %130)
  %132 = load i64, i64* @TX_RUP_INACTIVE, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %126
  %135 = load i32, i32* @RIO_DEBUG_CMD, align 4
  %136 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %137

137:                                              ; preds = %134, %126
  %138 = load %struct.UnixRup*, %struct.UnixRup** %9, align 8
  %139 = getelementptr inbounds %struct.UnixRup, %struct.UnixRup* %138, i32 0, i32 1
  store %struct.CmdBlk** %139, %struct.CmdBlk*** %8, align 8
  %140 = load i32, i32* @RIO_DEBUG_CMD, align 4
  %141 = load %struct.CmdBlk*, %struct.CmdBlk** %7, align 8
  %142 = load %struct.CmdBlk**, %struct.CmdBlk*** %8, align 8
  %143 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %140, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), %struct.CmdBlk* %141, %struct.CmdBlk** %142)
  br label %144

144:                                              ; preds = %148, %137
  %145 = load %struct.CmdBlk**, %struct.CmdBlk*** %8, align 8
  %146 = load %struct.CmdBlk*, %struct.CmdBlk** %145, align 8
  %147 = icmp ne %struct.CmdBlk* %146, null
  br i1 %147, label %148, label %160

148:                                              ; preds = %144
  %149 = load i32, i32* @RIO_DEBUG_CMD, align 4
  %150 = load %struct.CmdBlk**, %struct.CmdBlk*** %8, align 8
  %151 = load %struct.CmdBlk*, %struct.CmdBlk** %150, align 8
  %152 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %149, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), %struct.CmdBlk* %151)
  %153 = load %struct.CmdBlk**, %struct.CmdBlk*** %8, align 8
  %154 = load %struct.CmdBlk*, %struct.CmdBlk** %153, align 8
  %155 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %154, i32 0, i32 1
  store %struct.CmdBlk** %155, %struct.CmdBlk*** %8, align 8
  %156 = load i32, i32* @RIO_DEBUG_CMD, align 4
  %157 = load %struct.CmdBlk*, %struct.CmdBlk** %7, align 8
  %158 = load %struct.CmdBlk**, %struct.CmdBlk*** %8, align 8
  %159 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %156, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), %struct.CmdBlk* %157, %struct.CmdBlk** %158)
  br label %144

160:                                              ; preds = %144
  %161 = load i32, i32* @RIO_DEBUG_CMD, align 4
  %162 = load %struct.CmdBlk*, %struct.CmdBlk** %7, align 8
  %163 = load %struct.CmdBlk**, %struct.CmdBlk*** %8, align 8
  %164 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %161, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), %struct.CmdBlk* %162, %struct.CmdBlk** %163)
  %165 = load %struct.CmdBlk*, %struct.CmdBlk** %7, align 8
  %166 = load %struct.CmdBlk**, %struct.CmdBlk*** %8, align 8
  store %struct.CmdBlk* %165, %struct.CmdBlk** %166, align 8
  %167 = load %struct.CmdBlk*, %struct.CmdBlk** %7, align 8
  %168 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %167, i32 0, i32 1
  store %struct.CmdBlk* null, %struct.CmdBlk** %168, align 8
  %169 = load %struct.UnixRup*, %struct.UnixRup** %9, align 8
  %170 = getelementptr inbounds %struct.UnixRup, %struct.UnixRup* %169, i32 0, i32 0
  %171 = load i64, i64* %10, align 8
  %172 = call i32 @rio_spin_unlock_irqrestore(i32* %170, i64 %171)
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %160, %71, %19
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @rio_dprintk(i32, i8*, ...) #1

declare dso_local i32 @RIOFreeCmdBlk(%struct.CmdBlk*) #1

declare dso_local i32 @rio_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @readw(i32*) #1

declare dso_local i32 @RIO_PTR(i32, i64) #1

declare dso_local i32 @writew(i32, i32*) #1

declare dso_local i32 @rio_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
