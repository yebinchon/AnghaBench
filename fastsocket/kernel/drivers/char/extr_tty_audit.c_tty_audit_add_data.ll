; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_audit.c_tty_audit_add_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_audit.c_tty_audit_add_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.tty_struct = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32, i32 }
%struct.tty_audit_buf = type { i32, i32, i64, i64, i64, i32 }

@current = common dso_local global %struct.TYPE_8__* null, align 8
@TTY_DRIVER_TYPE_PTY = common dso_local global i64 0, align 8
@PTY_TYPE_MASTER = common dso_local global i64 0, align 8
@N_TTY_BUF_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_audit_add_data(%struct.tty_struct* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tty_audit_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %175

19:                                               ; preds = %3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %19
  %40 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %41 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %46 = call i32 @L_ECHO(%struct.tty_struct* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %175

49:                                               ; preds = %44, %39, %19
  %50 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %51 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %50, i32 0, i32 2
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TTY_DRIVER_TYPE_PTY, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %59 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %58, i32 0, i32 2
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PTY_TYPE_MASTER, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %175

66:                                               ; preds = %57, %49
  %67 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %68 = call %struct.tty_audit_buf* @tty_audit_buf_get(%struct.tty_struct* %67)
  store %struct.tty_audit_buf* %68, %struct.tty_audit_buf** %7, align 8
  %69 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %70 = icmp ne %struct.tty_audit_buf* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %175

72:                                               ; preds = %66
  %73 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %74 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %73, i32 0, i32 5
  %75 = call i32 @mutex_lock(i32* %74)
  %76 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %77 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %76, i32 0, i32 2
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %8, align 4
  %81 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %82 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %81, i32 0, i32 2
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %87 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %85, %88
  store i32 %89, i32* %9, align 4
  %90 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %91 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %109, label %95

95:                                               ; preds = %72
  %96 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %97 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %109, label %101

101:                                              ; preds = %95
  %102 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %103 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %106 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %101, %95, %72
  %110 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %111 = call i32 @tty_audit_buf_push_current(%struct.tty_audit_buf* %110)
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %114 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %117 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %119 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %122 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %121, i32 0, i32 2
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %109, %101
  br label %124

124:                                              ; preds = %166, %123
  %125 = load i64, i64* @N_TTY_BUF_SIZE, align 8
  %126 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %127 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %125, %128
  store i64 %129, i64* %12, align 8
  %130 = load i64, i64* %12, align 8
  %131 = load i64, i64* %6, align 8
  %132 = icmp ugt i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i64, i64* %6, align 8
  store i64 %134, i64* %12, align 8
  br label %135

135:                                              ; preds = %133, %124
  %136 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %137 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %140 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %138, %141
  %143 = load i8*, i8** %5, align 8
  %144 = load i64, i64* %12, align 8
  %145 = call i32 @memcpy(i64 %142, i8* %143, i64 %144)
  %146 = load i64, i64* %12, align 8
  %147 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %148 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %149, %146
  store i64 %150, i64* %148, align 8
  %151 = load i64, i64* %12, align 8
  %152 = load i8*, i8** %5, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 %151
  store i8* %153, i8** %5, align 8
  %154 = load i64, i64* %12, align 8
  %155 = load i64, i64* %6, align 8
  %156 = sub i64 %155, %154
  store i64 %156, i64* %6, align 8
  %157 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %158 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @N_TTY_BUF_SIZE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %135
  %163 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %164 = call i32 @tty_audit_buf_push_current(%struct.tty_audit_buf* %163)
  br label %165

165:                                              ; preds = %162, %135
  br label %166

166:                                              ; preds = %165
  %167 = load i64, i64* %6, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %124, label %169

169:                                              ; preds = %166
  %170 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %171 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %170, i32 0, i32 5
  %172 = call i32 @mutex_unlock(i32* %171)
  %173 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %174 = call i32 @tty_audit_buf_put(%struct.tty_audit_buf* %173)
  br label %175

175:                                              ; preds = %169, %71, %65, %48, %18
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @L_ECHO(%struct.tty_struct*) #1

declare dso_local %struct.tty_audit_buf* @tty_audit_buf_get(%struct.tty_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tty_audit_buf_push_current(%struct.tty_audit_buf*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_audit_buf_put(%struct.tty_audit_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
