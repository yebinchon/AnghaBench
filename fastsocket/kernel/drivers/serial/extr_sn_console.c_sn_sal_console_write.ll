; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sn_console.c_sn_sal_console_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sn_console.c_sn_sal_console_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn_cons_port = type { %struct.TYPE_8__*, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.console = type { i32 }

@sal_console_port = common dso_local global %struct.sn_cons_port zeroinitializer, align 8
@sn_sal_console_write.stole_lock = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.console*, i8*, i32)* @sn_sal_console_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sn_sal_console_write(%struct.console* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sn_cons_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store %struct.sn_cons_port* @sal_console_port, %struct.sn_cons_port** %8, align 8
  %13 = load %struct.sn_cons_port*, %struct.sn_cons_port** %8, align 8
  %14 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.sn_cons_port*, %struct.sn_cons_port** %8, align 8
  %21 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %3
  %26 = load %struct.sn_cons_port*, %struct.sn_cons_port** %8, align 8
  %27 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @puts_raw_fixed(i32 %30, i8* %31, i32 %32)
  br label %160

34:                                               ; preds = %3
  %35 = load %struct.sn_cons_port*, %struct.sn_cons_port** %8, align 8
  %36 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = call i64 @spin_is_locked(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %139

40:                                               ; preds = %34
  %41 = load %struct.sn_cons_port*, %struct.sn_cons_port** %8, align 8
  %42 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.sn_cons_port*, %struct.sn_cons_port** %8, align 8
  %49 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %114, %40
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 150
  br i1 %57, label %58, label %118

58:                                               ; preds = %55
  %59 = load %struct.sn_cons_port*, %struct.sn_cons_port** %8, align 8
  %60 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = call i64 @spin_is_locked(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @sn_sal_console_write.stole_lock, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %64, %58
  %68 = load i32, i32* @sn_sal_console_write.stole_lock, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load %struct.sn_cons_port*, %struct.sn_cons_port** %8, align 8
  %72 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  store i32 1, i32* %12, align 4
  br label %76

76:                                               ; preds = %70, %67
  br label %118

77:                                               ; preds = %64
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.sn_cons_port*, %struct.sn_cons_port** %8, align 8
  %80 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %78, %85
  br i1 %86, label %97, label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.sn_cons_port*, %struct.sn_cons_port** %8, align 8
  %90 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %88, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %87, %77
  %98 = load %struct.sn_cons_port*, %struct.sn_cons_port** %8, align 8
  %99 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %9, align 4
  %105 = load %struct.sn_cons_port*, %struct.sn_cons_port** %8, align 8
  %106 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %97, %87
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113
  %115 = call i32 @mdelay(i32 125)
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %55

118:                                              ; preds = %76, %55
  %119 = load %struct.sn_cons_port*, %struct.sn_cons_port** %8, align 8
  %120 = call i32 @sn_transmit_chars(%struct.sn_cons_port* %119, i32 1)
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.sn_cons_port*, %struct.sn_cons_port** %8, align 8
  %125 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i64, i64* %7, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  store i32 0, i32* @sn_sal_console_write.stole_lock, align 4
  br label %130

129:                                              ; preds = %118
  store i32 1, i32* @sn_sal_console_write.stole_lock, align 4
  br label %130

130:                                              ; preds = %129, %123
  %131 = load %struct.sn_cons_port*, %struct.sn_cons_port** %8, align 8
  %132 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i8*, i8** %5, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @puts_raw_fixed(i32 %135, i8* %136, i32 %137)
  br label %160

139:                                              ; preds = %34
  store i32 0, i32* @sn_sal_console_write.stole_lock, align 4
  %140 = load %struct.sn_cons_port*, %struct.sn_cons_port** %8, align 8
  %141 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i64, i64* %7, align 8
  %144 = call i32 @spin_lock_irqsave(i32* %142, i64 %143)
  %145 = load %struct.sn_cons_port*, %struct.sn_cons_port** %8, align 8
  %146 = call i32 @sn_transmit_chars(%struct.sn_cons_port* %145, i32 1)
  %147 = load %struct.sn_cons_port*, %struct.sn_cons_port** %8, align 8
  %148 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i64, i64* %7, align 8
  %151 = call i32 @spin_unlock_irqrestore(i32* %149, i64 %150)
  %152 = load %struct.sn_cons_port*, %struct.sn_cons_port** %8, align 8
  %153 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %152, i32 0, i32 0
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i8*, i8** %5, align 8
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @puts_raw_fixed(i32 %156, i8* %157, i32 %158)
  br label %160

160:                                              ; preds = %25, %139, %130
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @puts_raw_fixed(i32, i8*, i32) #1

declare dso_local i64 @spin_is_locked(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @sn_transmit_chars(%struct.sn_cons_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
