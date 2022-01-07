; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_set_control_lines.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_set_control_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_tty = type { i32, i32, i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_tty*, i32, i32)* @set_control_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_control_lines(%struct.ipw_tty* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipw_tty*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipw_tty* %0, %struct.ipw_tty** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @TIOCM_RTS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %3
  %14 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %15 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %18 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ipwireless_set_RTS(i32 %16, i32 %19, i32 1)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %143

25:                                               ; preds = %13
  %26 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %27 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %32 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %35 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ipwireless_set_RTS(i32 %33, i32 %36, i32 1)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %143

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %25
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @TIOCM_DTR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %44
  %50 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %51 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %54 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ipwireless_set_DTR(i32 %52, i32 %55, i32 1)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %143

61:                                               ; preds = %49
  %62 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %63 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %68 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %71 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ipwireless_set_DTR(i32 %69, i32 %72, i32 1)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %4, align 4
  br label %143

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %61
  br label %80

80:                                               ; preds = %79, %44
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @TIOCM_RTS, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %111

85:                                               ; preds = %80
  %86 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %87 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %90 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ipwireless_set_RTS(i32 %88, i32 %91, i32 0)
  store i32 %92, i32* %8, align 4
  %93 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %94 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %97, label %110

97:                                               ; preds = %85
  %98 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %99 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %102 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ipwireless_set_RTS(i32 %100, i32 %103, i32 0)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %4, align 4
  br label %143

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109, %85
  br label %111

111:                                              ; preds = %110, %80
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @TIOCM_DTR, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %142

116:                                              ; preds = %111
  %117 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %118 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %121 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ipwireless_set_DTR(i32 %119, i32 %122, i32 0)
  store i32 %123, i32* %8, align 4
  %124 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %125 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, -1
  br i1 %127, label %128, label %141

128:                                              ; preds = %116
  %129 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %130 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %133 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ipwireless_set_DTR(i32 %131, i32 %134, i32 0)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %128
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %4, align 4
  br label %143

140:                                              ; preds = %128
  br label %141

141:                                              ; preds = %140, %116
  br label %142

142:                                              ; preds = %141, %111
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %138, %107, %76, %59, %40, %23
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @ipwireless_set_RTS(i32, i32, i32) #1

declare dso_local i32 @ipwireless_set_DTR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
