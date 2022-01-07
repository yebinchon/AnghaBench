; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_set_ldisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_set_ldisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.tty_ldisc*, i32, i64, %struct.tty_struct* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.tty_struct*)* }
%struct.tty_ldisc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@TTY_LDISC_CHANGING = common dso_local global i32 0, align 4
@tty_ldisc_wait = common dso_local global i32 0, align 4
@TTY_HUPPED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_set_ldisc(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty_ldisc*, align 8
  %8 = alloca %struct.tty_ldisc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.tty_ldisc* @tty_ldisc_get(i32 %12)
  store %struct.tty_ldisc* %13, %struct.tty_ldisc** %8, align 8
  %14 = load %struct.tty_ldisc*, %struct.tty_ldisc** %8, align 8
  %15 = call i64 @IS_ERR(%struct.tty_ldisc* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.tty_ldisc*, %struct.tty_ldisc** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.tty_ldisc* %18)
  store i32 %19, i32* %3, align 4
  br label %186

20:                                               ; preds = %2
  %21 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %22 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %21, i32 0, i32 6
  %23 = load %struct.tty_struct*, %struct.tty_struct** %22, align 8
  store %struct.tty_struct* %23, %struct.tty_struct** %11, align 8
  %24 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 3
  %26 = load %struct.tty_ldisc*, %struct.tty_ldisc** %25, align 8
  %27 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load %struct.tty_ldisc*, %struct.tty_ldisc** %8, align 8
  %35 = call i32 @tty_ldisc_put(%struct.tty_ldisc* %34)
  store i32 0, i32* %3, align 4
  br label %186

36:                                               ; preds = %20
  %37 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %38 = call i32 @tty_wait_until_sent(%struct.tty_struct* %37, i32 0)
  %39 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  br label %42

42:                                               ; preds = %48, %36
  %43 = load i32, i32* @TTY_LDISC_CHANGING, align 4
  %44 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %45 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %44, i32 0, i32 4
  %46 = call i64 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %50 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* @tty_ldisc_wait, align 4
  %53 = load i32, i32* @TTY_LDISC_CHANGING, align 4
  %54 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %55 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %54, i32 0, i32 4
  %56 = call i64 @test_bit(i32 %53, i32* %55)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @wait_event(i32 %52, i32 %58)
  %60 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %61 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %60, i32 0, i32 0
  %62 = call i32 @mutex_lock(i32* %61)
  br label %42

63:                                               ; preds = %42
  %64 = load i32, i32* @TTY_LDISC_CHANGING, align 4
  %65 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %66 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %65, i32 0, i32 4
  %67 = call i32 @set_bit(i32 %64, i32* %66)
  %68 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %69 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %68, i32 0, i32 5
  store i64 0, i64* %69, align 8
  %70 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %71 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %70, i32 0, i32 3
  %72 = load %struct.tty_ldisc*, %struct.tty_ldisc** %71, align 8
  store %struct.tty_ldisc* %72, %struct.tty_ldisc** %7, align 8
  %73 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %74 = call i32 @tty_ldisc_halt(%struct.tty_struct* %73)
  store i32 %74, i32* %9, align 4
  %75 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  %76 = icmp ne %struct.tty_struct* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %63
  %78 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  %79 = call i32 @tty_ldisc_halt(%struct.tty_struct* %78)
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %77, %63
  %81 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %82 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = call i32 (...) @flush_scheduled_work()
  %85 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %86 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %85, i32 0, i32 0
  %87 = call i32 @mutex_lock(i32* %86)
  %88 = load i32, i32* @TTY_HUPPED, align 4
  %89 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %90 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %89, i32 0, i32 4
  %91 = call i64 @test_bit(i32 %88, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %80
  %94 = load i32, i32* @TTY_LDISC_CHANGING, align 4
  %95 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %96 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %95, i32 0, i32 4
  %97 = call i32 @clear_bit(i32 %94, i32* %96)
  %98 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %99 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load %struct.tty_ldisc*, %struct.tty_ldisc** %8, align 8
  %102 = call i32 @tty_ldisc_put(%struct.tty_ldisc* %101)
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %186

105:                                              ; preds = %80
  %106 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %107 = load %struct.tty_ldisc*, %struct.tty_ldisc** %7, align 8
  %108 = call i32 @tty_ldisc_close(%struct.tty_struct* %106, %struct.tty_ldisc* %107)
  %109 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %110 = load %struct.tty_ldisc*, %struct.tty_ldisc** %8, align 8
  %111 = call i32 @tty_ldisc_assign(%struct.tty_struct* %109, %struct.tty_ldisc* %110)
  %112 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @tty_set_termios_ldisc(%struct.tty_struct* %112, i32 %113)
  %115 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %116 = load %struct.tty_ldisc*, %struct.tty_ldisc** %8, align 8
  %117 = call i32 @tty_ldisc_open(%struct.tty_struct* %115, %struct.tty_ldisc* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %105
  %121 = load %struct.tty_ldisc*, %struct.tty_ldisc** %8, align 8
  %122 = call i32 @tty_ldisc_put(%struct.tty_ldisc* %121)
  %123 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %124 = load %struct.tty_ldisc*, %struct.tty_ldisc** %7, align 8
  %125 = call i32 @tty_ldisc_restore(%struct.tty_struct* %123, %struct.tty_ldisc* %124)
  br label %126

126:                                              ; preds = %120, %105
  %127 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %128 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %127, i32 0, i32 3
  %129 = load %struct.tty_ldisc*, %struct.tty_ldisc** %128, align 8
  %130 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.tty_ldisc*, %struct.tty_ldisc** %7, align 8
  %135 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %133, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %126
  %141 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %142 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %141, i32 0, i32 2
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %144, align 8
  %146 = icmp ne i32 (%struct.tty_struct*)* %145, null
  br i1 %146, label %147, label %155

147:                                              ; preds = %140
  %148 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %149 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %148, i32 0, i32 2
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %151, align 8
  %153 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %154 = call i32 %152(%struct.tty_struct* %153)
  br label %155

155:                                              ; preds = %147, %140, %126
  %156 = load %struct.tty_ldisc*, %struct.tty_ldisc** %7, align 8
  %157 = call i32 @tty_ldisc_put(%struct.tty_ldisc* %156)
  %158 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %159 = call i32 @tty_ldisc_enable(%struct.tty_struct* %158)
  %160 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  %161 = icmp ne %struct.tty_struct* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  %164 = call i32 @tty_ldisc_enable(%struct.tty_struct* %163)
  br label %165

165:                                              ; preds = %162, %155
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %170 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = call i32 @schedule_delayed_work(i32* %171, i32 1)
  br label %173

173:                                              ; preds = %168, %165
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  %178 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = call i32 @schedule_delayed_work(i32* %179, i32 1)
  br label %181

181:                                              ; preds = %176, %173
  %182 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %183 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %182, i32 0, i32 0
  %184 = call i32 @mutex_unlock(i32* %183)
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %181, %93, %33, %17
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.tty_ldisc* @tty_ldisc_get(i32) #1

declare dso_local i64 @IS_ERR(%struct.tty_ldisc*) #1

declare dso_local i32 @PTR_ERR(%struct.tty_ldisc*) #1

declare dso_local i32 @tty_ldisc_put(%struct.tty_ldisc*) #1

declare dso_local i32 @tty_wait_until_sent(%struct.tty_struct*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tty_ldisc_halt(%struct.tty_struct*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @tty_ldisc_close(%struct.tty_struct*, %struct.tty_ldisc*) #1

declare dso_local i32 @tty_ldisc_assign(%struct.tty_struct*, %struct.tty_ldisc*) #1

declare dso_local i32 @tty_set_termios_ldisc(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_ldisc_open(%struct.tty_struct*, %struct.tty_ldisc*) #1

declare dso_local i32 @tty_ldisc_restore(%struct.tty_struct*, %struct.tty_ldisc*) #1

declare dso_local i32 @tty_ldisc_enable(%struct.tty_struct*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
