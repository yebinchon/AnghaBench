; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400flowctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400flowctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.tty_struct = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"stl_cd1400flowctrl(portp=%p,state=%x)\0A\00", align 1
@brd_lock = common dso_local global i32 0, align 4
@CAR = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@CCR_SENDSCHR1 = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@MCOR1 = common dso_local global i32 0, align 4
@FIFO_RTSTHRESHOLD = common dso_local global i32 0, align 4
@MSVR2 = common dso_local global i32 0, align 4
@MSVR2_RTS = common dso_local global i32 0, align 4
@CCR_SENDSCHR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlport*, i32)* @stl_cd1400flowctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_cd1400flowctrl(%struct.stlport* %0, i32 %1) #0 {
  %3 = alloca %struct.stlport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i64, align 8
  store %struct.stlport* %0, %struct.stlport** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.stlport*, %struct.stlport** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.stlport* %7, i32 %8)
  %10 = load %struct.stlport*, %struct.stlport** %3, align 8
  %11 = icmp eq %struct.stlport* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %148

13:                                               ; preds = %2
  %14 = load %struct.stlport*, %struct.stlport** %3, align 8
  %15 = getelementptr inbounds %struct.stlport, %struct.stlport* %14, i32 0, i32 4
  %16 = call %struct.tty_struct* @tty_port_tty_get(i32* %15)
  store %struct.tty_struct* %16, %struct.tty_struct** %5, align 8
  %17 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %18 = icmp eq %struct.tty_struct* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %148

20:                                               ; preds = %13
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %21)
  %23 = load %struct.stlport*, %struct.stlport** %3, align 8
  %24 = getelementptr inbounds %struct.stlport, %struct.stlport* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.stlport*, %struct.stlport** %3, align 8
  %27 = getelementptr inbounds %struct.stlport, %struct.stlport* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @BRDENABLE(i32 %25, i32 %28)
  %30 = load %struct.stlport*, %struct.stlport** %3, align 8
  %31 = load i32, i32* @CAR, align 4
  %32 = load %struct.stlport*, %struct.stlport** %3, align 8
  %33 = getelementptr inbounds %struct.stlport, %struct.stlport* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 3
  %36 = call i32 @stl_cd1400setreg(%struct.stlport* %30, i32 %31, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %90

39:                                               ; preds = %20
  %40 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %41 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IXOFF, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %39
  %49 = load %struct.stlport*, %struct.stlport** %3, align 8
  %50 = call i32 @stl_cd1400ccrwait(%struct.stlport* %49)
  %51 = load %struct.stlport*, %struct.stlport** %3, align 8
  %52 = load i32, i32* @CCR, align 4
  %53 = load i32, i32* @CCR_SENDSCHR1, align 4
  %54 = call i32 @stl_cd1400setreg(%struct.stlport* %51, i32 %52, i32 %53)
  %55 = load %struct.stlport*, %struct.stlport** %3, align 8
  %56 = getelementptr inbounds %struct.stlport, %struct.stlport* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.stlport*, %struct.stlport** %3, align 8
  %61 = call i32 @stl_cd1400ccrwait(%struct.stlport* %60)
  br label %62

62:                                               ; preds = %48, %39
  %63 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %64 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CRTSCTS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %62
  %72 = load %struct.stlport*, %struct.stlport** %3, align 8
  %73 = load i32, i32* @MCOR1, align 4
  %74 = load %struct.stlport*, %struct.stlport** %3, align 8
  %75 = load i32, i32* @MCOR1, align 4
  %76 = call i32 @stl_cd1400getreg(%struct.stlport* %74, i32 %75)
  %77 = load i32, i32* @FIFO_RTSTHRESHOLD, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @stl_cd1400setreg(%struct.stlport* %72, i32 %73, i32 %78)
  %80 = load %struct.stlport*, %struct.stlport** %3, align 8
  %81 = load i32, i32* @MSVR2, align 4
  %82 = load i32, i32* @MSVR2_RTS, align 4
  %83 = call i32 @stl_cd1400setreg(%struct.stlport* %80, i32 %81, i32 %82)
  %84 = load %struct.stlport*, %struct.stlport** %3, align 8
  %85 = getelementptr inbounds %struct.stlport, %struct.stlport* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %71, %62
  br label %139

90:                                               ; preds = %20
  %91 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %92 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IXOFF, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %90
  %100 = load %struct.stlport*, %struct.stlport** %3, align 8
  %101 = call i32 @stl_cd1400ccrwait(%struct.stlport* %100)
  %102 = load %struct.stlport*, %struct.stlport** %3, align 8
  %103 = load i32, i32* @CCR, align 4
  %104 = load i32, i32* @CCR_SENDSCHR2, align 4
  %105 = call i32 @stl_cd1400setreg(%struct.stlport* %102, i32 %103, i32 %104)
  %106 = load %struct.stlport*, %struct.stlport** %3, align 8
  %107 = getelementptr inbounds %struct.stlport, %struct.stlport* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.stlport*, %struct.stlport** %3, align 8
  %112 = call i32 @stl_cd1400ccrwait(%struct.stlport* %111)
  br label %113

113:                                              ; preds = %99, %90
  %114 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %115 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @CRTSCTS, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %113
  %123 = load %struct.stlport*, %struct.stlport** %3, align 8
  %124 = load i32, i32* @MCOR1, align 4
  %125 = load %struct.stlport*, %struct.stlport** %3, align 8
  %126 = load i32, i32* @MCOR1, align 4
  %127 = call i32 @stl_cd1400getreg(%struct.stlport* %125, i32 %126)
  %128 = and i32 %127, 240
  %129 = call i32 @stl_cd1400setreg(%struct.stlport* %123, i32 %124, i32 %128)
  %130 = load %struct.stlport*, %struct.stlport** %3, align 8
  %131 = load i32, i32* @MSVR2, align 4
  %132 = call i32 @stl_cd1400setreg(%struct.stlport* %130, i32 %131, i32 0)
  %133 = load %struct.stlport*, %struct.stlport** %3, align 8
  %134 = getelementptr inbounds %struct.stlport, %struct.stlport* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %122, %113
  br label %139

139:                                              ; preds = %138, %89
  %140 = load %struct.stlport*, %struct.stlport** %3, align 8
  %141 = getelementptr inbounds %struct.stlport, %struct.stlport* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @BRDDISABLE(i32 %142)
  %144 = load i64, i64* %6, align 8
  %145 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %144)
  %146 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %147 = call i32 @tty_kref_put(%struct.tty_struct* %146)
  br label %148

148:                                              ; preds = %139, %19, %12
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.stlport*, i32) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BRDENABLE(i32, i32) #1

declare dso_local i32 @stl_cd1400setreg(%struct.stlport*, i32, i32) #1

declare dso_local i32 @stl_cd1400ccrwait(%struct.stlport*) #1

declare dso_local i32 @stl_cd1400getreg(%struct.stlport*, i32) #1

declare dso_local i32 @BRDDISABLE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
