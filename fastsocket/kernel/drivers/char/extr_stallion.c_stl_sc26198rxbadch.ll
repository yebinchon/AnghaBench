; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198rxbadch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198rxbadch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i32, i8, i8, %struct.TYPE_3__, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tty_struct = type { i32 }

@SR_RXPARITY = common dso_local global i8 0, align 1
@SR_RXFRAMING = common dso_local global i8 0, align 1
@SR_RXOVERRUN = common dso_local global i8 0, align 1
@SR_RXBREAK = common dso_local global i8 0, align 1
@TTY_BREAK = common dso_local global i8 0, align 1
@ASYNC_SAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlport*, i8, i8)* @stl_sc26198rxbadch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_sc26198rxbadch(%struct.stlport* %0, i8 zeroext %1, i8 signext %2) #0 {
  %4 = alloca %struct.stlport*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.tty_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.stlport* %0, %struct.stlport** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %9 = load %struct.stlport*, %struct.stlport** %4, align 8
  %10 = getelementptr inbounds %struct.stlport, %struct.stlport* %9, i32 0, i32 6
  %11 = call %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_4__* %10)
  store %struct.tty_struct* %11, %struct.tty_struct** %7, align 8
  %12 = load %struct.stlport*, %struct.stlport** %4, align 8
  %13 = getelementptr inbounds %struct.stlport, %struct.stlport* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @SR_RXPARITY, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.stlport*, %struct.stlport** %4, align 8
  %23 = getelementptr inbounds %struct.stlport, %struct.stlport* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %3
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @SR_RXFRAMING, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.stlport*, %struct.stlport** %4, align 8
  %36 = getelementptr inbounds %struct.stlport, %struct.stlport* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %27
  %41 = load i8, i8* %5, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @SR_RXOVERRUN, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.stlport*, %struct.stlport** %4, align 8
  %49 = getelementptr inbounds %struct.stlport, %struct.stlport* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %40
  %54 = load i8, i8* %5, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* @SR_RXBREAK, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.stlport*, %struct.stlport** %4, align 8
  %62 = getelementptr inbounds %struct.stlport, %struct.stlport* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %53
  %67 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %68 = icmp ne %struct.tty_struct* %67, null
  br i1 %68, label %69, label %164

69:                                               ; preds = %66
  %70 = load %struct.stlport*, %struct.stlport** %4, align 8
  %71 = getelementptr inbounds %struct.stlport, %struct.stlport* %70, i32 0, i32 1
  %72 = load i8, i8* %71, align 4
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* %5, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %73, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %164

78:                                               ; preds = %69
  %79 = load %struct.stlport*, %struct.stlport** %4, align 8
  %80 = getelementptr inbounds %struct.stlport, %struct.stlport* %79, i32 0, i32 2
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* %5, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %146

87:                                               ; preds = %78
  %88 = load i8, i8* %5, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* @SR_RXBREAK, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %87
  %95 = load i8, i8* @TTY_BREAK, align 1
  store i8 %95, i8* %5, align 1
  %96 = load %struct.stlport*, %struct.stlport** %4, align 8
  %97 = getelementptr inbounds %struct.stlport, %struct.stlport* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ASYNC_SAK, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %94
  %104 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %105 = call i32 @do_SAK(%struct.tty_struct* %104)
  %106 = load %struct.stlport*, %struct.stlport** %4, align 8
  %107 = getelementptr inbounds %struct.stlport, %struct.stlport* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.stlport*, %struct.stlport** %4, align 8
  %110 = getelementptr inbounds %struct.stlport, %struct.stlport* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @BRDENABLE(i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %103, %94
  br label %145

114:                                              ; preds = %87
  %115 = load i8, i8* %5, align 1
  %116 = zext i8 %115 to i32
  %117 = load i8, i8* @SR_RXPARITY, align 1
  %118 = zext i8 %117 to i32
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i8, i8* @TTY_PARITY, align 1
  store i8 %122, i8* %5, align 1
  br label %144

123:                                              ; preds = %114
  %124 = load i8, i8* %5, align 1
  %125 = zext i8 %124 to i32
  %126 = load i8, i8* @SR_RXFRAMING, align 1
  %127 = zext i8 %126 to i32
  %128 = and i32 %125, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i8, i8* @TTY_FRAME, align 1
  store i8 %131, i8* %5, align 1
  br label %143

132:                                              ; preds = %123
  %133 = load i8, i8* %5, align 1
  %134 = zext i8 %133 to i32
  %135 = load i8, i8* @SR_RXOVERRUN, align 1
  %136 = zext i8 %135 to i32
  %137 = and i32 %134, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load i8, i8* @TTY_OVERRUN, align 1
  store i8 %140, i8* %5, align 1
  br label %142

141:                                              ; preds = %132
  store i8 0, i8* %5, align 1
  br label %142

142:                                              ; preds = %141, %139
  br label %143

143:                                              ; preds = %142, %130
  br label %144

144:                                              ; preds = %143, %121
  br label %145

145:                                              ; preds = %144, %113
  br label %147

146:                                              ; preds = %78
  store i8 0, i8* %5, align 1
  br label %147

147:                                              ; preds = %146, %145
  %148 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %149 = load i8, i8* %6, align 1
  %150 = load i8, i8* %5, align 1
  %151 = call i32 @tty_insert_flip_char(%struct.tty_struct* %148, i8 signext %149, i8 zeroext %150)
  %152 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %153 = call i32 @tty_schedule_flip(%struct.tty_struct* %152)
  %154 = load i8, i8* %5, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %147
  %158 = load %struct.stlport*, %struct.stlport** %4, align 8
  %159 = getelementptr inbounds %struct.stlport, %struct.stlport* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %157, %147
  br label %164

164:                                              ; preds = %163, %69, %66
  %165 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %166 = call i32 @tty_kref_put(%struct.tty_struct* %165)
  ret void
}

declare dso_local %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_4__*) #1

declare dso_local i32 @do_SAK(%struct.tty_struct*) #1

declare dso_local i32 @BRDENABLE(i32, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 signext, i8 zeroext) #1

declare dso_local i32 @tty_schedule_flip(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
