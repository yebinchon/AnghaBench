; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_cmds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32* }

@last_cmd = common dso_local global i32* null, align 8
@xmon_regs = common dso_local global %struct.pt_regs* null, align 8
@xmon_no_auto_backtrace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"mon> \00", align 1
@termch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c" <no input ...>\0A\00", align 1
@help_string = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Unrecognized command: \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\\x%x\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c" (type ? for help)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmds(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** @last_cmd, align 8
  %5 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  store %struct.pt_regs* %5, %struct.pt_regs** @xmon_regs, align 8
  %6 = load i32, i32* @xmon_no_auto_backtrace, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  store i32 1, i32* @xmon_no_auto_backtrace, align 4
  %9 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %10 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @xmon_show_stack(i32 %13, i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %8, %1
  br label %22

22:                                               ; preds = %125, %31, %21
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 (...) @flush_input()
  store i32 0, i32* @termch, align 4
  %25 = call i32 (...) @skipbl()
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32*, i32** @last_cmd, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %22

32:                                               ; preds = %28
  %33 = load i32*, i32** @last_cmd, align 8
  %34 = call i32 @take_input(i32* %33)
  store i32* null, i32** @last_cmd, align 8
  %35 = call i32 (...) @inchar()
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %22
  %37 = load i32, i32* %4, align 4
  switch i32 %37, label %104 [
    i32 109, label %38
    i32 100, label %54
    i32 108, label %56
    i32 114, label %58
    i32 101, label %61
    i32 83, label %64
    i32 116, label %66
    i32 102, label %69
    i32 115, label %71
    i32 120, label %82
    i32 88, label %82
    i32 128, label %84
    i32 63, label %88
    i32 98, label %91
    i32 67, label %93
    i32 99, label %95
    i32 122, label %100
    i32 112, label %102
  ]

38:                                               ; preds = %36
  %39 = call i32 (...) @inchar()
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  switch i32 %40, label %50 [
    i32 109, label %41
    i32 115, label %41
    i32 100, label %41
    i32 108, label %44
    i32 122, label %46
    i32 105, label %48
  ]

41:                                               ; preds = %38, %38, %38
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @memops(i32 %42)
  br label %53

44:                                               ; preds = %38
  %45 = call i32 (...) @memlocate()
  br label %53

46:                                               ; preds = %38
  %47 = call i32 (...) @memzcan()
  br label %53

48:                                               ; preds = %38
  %49 = call i32 @show_mem(i32 0)
  br label %53

50:                                               ; preds = %38
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* @termch, align 4
  %52 = call i32 (...) @memex()
  br label %53

53:                                               ; preds = %50, %48, %46, %44, %41
  br label %125

54:                                               ; preds = %36
  %55 = call i32 (...) @dump()
  br label %125

56:                                               ; preds = %36
  %57 = call i32 (...) @symbol_lookup()
  br label %125

58:                                               ; preds = %36
  %59 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %60 = call i32 @prregs(%struct.pt_regs* %59)
  br label %125

61:                                               ; preds = %36
  %62 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %63 = call i32 @excprint(%struct.pt_regs* %62)
  br label %125

64:                                               ; preds = %36
  %65 = call i32 (...) @super_regs()
  br label %125

66:                                               ; preds = %36
  %67 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %68 = call i32 @backtrace(%struct.pt_regs* %67)
  br label %125

69:                                               ; preds = %36
  %70 = call i32 (...) @cacheflush()
  br label %125

71:                                               ; preds = %36
  %72 = call i32 (...) @do_spu_cmd()
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %125

75:                                               ; preds = %71
  %76 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %77 = call i32 @do_step(%struct.pt_regs* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %126

81:                                               ; preds = %75
  br label %125

82:                                               ; preds = %36, %36
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %126

84:                                               ; preds = %36
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %86 = call i32 @mdelay(i32 2000)
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %126

88:                                               ; preds = %36
  %89 = load i32, i32* @help_string, align 4
  %90 = call i32 @xmon_puts(i32 %89)
  br label %125

91:                                               ; preds = %36
  %92 = call i32 (...) @bpt_cmds()
  br label %125

93:                                               ; preds = %36
  %94 = call i32 (...) @csum()
  br label %125

95:                                               ; preds = %36
  %96 = call i32 (...) @cpu_cmd()
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 0, i32* %2, align 4
  br label %126

99:                                               ; preds = %95
  br label %125

100:                                              ; preds = %36
  %101 = call i32 (...) @bootcmds()
  br label %125

102:                                              ; preds = %36
  %103 = call i32 (...) @proccall()
  br label %125

104:                                              ; preds = %36
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %106

106:                                              ; preds = %120, %104
  %107 = load i32, i32* %4, align 4
  %108 = icmp slt i32 32, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32, i32* %4, align 4
  %111 = icmp sle i32 %110, 126
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @putchar(i32 %113)
  br label %118

115:                                              ; preds = %109, %106
  %116 = load i32, i32* %4, align 4
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = call i32 (...) @inchar()
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 10
  br i1 %122, label %106, label %123

123:                                              ; preds = %120
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %102, %100, %99, %93, %91, %88, %81, %74, %69, %66, %64, %61, %58, %56, %54, %53
  br label %22

126:                                              ; preds = %98, %84, %82, %79
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @xmon_show_stack(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @flush_input(...) #1

declare dso_local i32 @skipbl(...) #1

declare dso_local i32 @take_input(i32*) #1

declare dso_local i32 @inchar(...) #1

declare dso_local i32 @memops(i32) #1

declare dso_local i32 @memlocate(...) #1

declare dso_local i32 @memzcan(...) #1

declare dso_local i32 @show_mem(i32) #1

declare dso_local i32 @memex(...) #1

declare dso_local i32 @dump(...) #1

declare dso_local i32 @symbol_lookup(...) #1

declare dso_local i32 @prregs(%struct.pt_regs*) #1

declare dso_local i32 @excprint(%struct.pt_regs*) #1

declare dso_local i32 @super_regs(...) #1

declare dso_local i32 @backtrace(%struct.pt_regs*) #1

declare dso_local i32 @cacheflush(...) #1

declare dso_local i32 @do_spu_cmd(...) #1

declare dso_local i32 @do_step(%struct.pt_regs*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @xmon_puts(i32) #1

declare dso_local i32 @bpt_cmds(...) #1

declare dso_local i32 @csum(...) #1

declare dso_local i32 @cpu_cmd(...) #1

declare dso_local i32 @bootcmds(...) #1

declare dso_local i32 @proccall(...) #1

declare dso_local i32 @putchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
