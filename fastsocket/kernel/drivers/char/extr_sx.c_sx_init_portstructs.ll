; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sx.c_sx_init_portstructs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sx.c_sx_init_portstructs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sx_port = type { i32, i32, %struct.TYPE_3__, %struct.sx_board* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.sx_board = type { i32, i32, %struct.sx_port* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@sx_ports = common dso_local global %struct.sx_port* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@boards = common dso_local global %struct.sx_board* null, align 8
@SX_DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"initing port %d\0A\00", align 1
@sx_port_ops = common dso_local global i32 0, align 4
@SX_MAGIC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@sx_real_driver = common dso_local global i32 0, align 4
@SX_DEBUG_PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Board has %d channels\0A\00", align 1
@mc_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Module at %x: %d channels\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Port at\00", align 1
@mc_chan_pointer = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c" %x\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MUTEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @sx_init_portstructs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx_init_portstructs(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sx_board*, align 8
  %7 = alloca %struct.sx_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = call i32 (...) @func_enter()
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.sx_port* @kcalloc(i32 %14, i32 56, i32 %15)
  store %struct.sx_port* %16, %struct.sx_port** @sx_ports, align 8
  %17 = load %struct.sx_port*, %struct.sx_port** @sx_ports, align 8
  %18 = icmp ne %struct.sx_port* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %184

22:                                               ; preds = %2
  %23 = load %struct.sx_port*, %struct.sx_port** @sx_ports, align 8
  store %struct.sx_port* %23, %struct.sx_port** %7, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %87, %22
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %90

28:                                               ; preds = %24
  %29 = load %struct.sx_board*, %struct.sx_board** @boards, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.sx_board, %struct.sx_board* %29, i64 %31
  store %struct.sx_board* %32, %struct.sx_board** %6, align 8
  %33 = load %struct.sx_port*, %struct.sx_port** %7, align 8
  %34 = load %struct.sx_board*, %struct.sx_board** %6, align 8
  %35 = getelementptr inbounds %struct.sx_board, %struct.sx_board* %34, i32 0, i32 2
  store %struct.sx_port* %33, %struct.sx_port** %35, align 8
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %83, %28
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.sx_board*, %struct.sx_board** @boards, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sx_board, %struct.sx_board* %38, i64 %40
  %42 = getelementptr inbounds %struct.sx_board, %struct.sx_board* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %37, %43
  br i1 %44, label %45, label %86

45:                                               ; preds = %36
  %46 = load i32, i32* @SX_DEBUG_INIT, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.sx_port*, %struct.sx_port** %7, align 8
  %50 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 6
  %52 = call i32 @tty_port_init(%struct.TYPE_4__* %51)
  %53 = load %struct.sx_port*, %struct.sx_port** %7, align 8
  %54 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32* @sx_port_ops, i32** %56, align 8
  %57 = load i32, i32* @SX_MAGIC, align 4
  %58 = load %struct.sx_port*, %struct.sx_port** %7, align 8
  %59 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* @HZ, align 4
  %62 = sdiv i32 %61, 2
  %63 = load %struct.sx_port*, %struct.sx_port** %7, align 8
  %64 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* @HZ, align 4
  %67 = mul nsw i32 30, %66
  %68 = load %struct.sx_port*, %struct.sx_port** %7, align 8
  %69 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = load %struct.sx_board*, %struct.sx_board** %6, align 8
  %72 = load %struct.sx_port*, %struct.sx_port** %7, align 8
  %73 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %72, i32 0, i32 3
  store %struct.sx_board* %71, %struct.sx_board** %73, align 8
  %74 = load %struct.sx_port*, %struct.sx_port** %7, align 8
  %75 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  store i32* @sx_real_driver, i32** %76, align 8
  %77 = load %struct.sx_port*, %struct.sx_port** %7, align 8
  %78 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = call i32 @spin_lock_init(i32* %79)
  %81 = load %struct.sx_port*, %struct.sx_port** %7, align 8
  %82 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %81, i32 1
  store %struct.sx_port* %82, %struct.sx_port** %7, align 8
  br label %83

83:                                               ; preds = %45
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %36

86:                                               ; preds = %36
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %24

90:                                               ; preds = %24
  %91 = load %struct.sx_port*, %struct.sx_port** @sx_ports, align 8
  store %struct.sx_port* %91, %struct.sx_port** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %179, %90
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %182

96:                                               ; preds = %92
  %97 = load %struct.sx_board*, %struct.sx_board** @boards, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.sx_board, %struct.sx_board* %97, i64 %99
  store %struct.sx_board* %100, %struct.sx_board** %6, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.sx_board*, %struct.sx_board** %6, align 8
  %103 = getelementptr inbounds %struct.sx_board, %struct.sx_board* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @SX_DEBUG_PROBE, align 4
  %105 = load %struct.sx_board*, %struct.sx_board** %6, align 8
  %106 = getelementptr inbounds %struct.sx_board, %struct.sx_board* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load %struct.sx_board*, %struct.sx_board** %6, align 8
  %110 = getelementptr inbounds %struct.sx_board, %struct.sx_board* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp sle i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %96
  br label %179

114:                                              ; preds = %96
  store i32 128, i32* %10, align 4
  br label %115

115:                                              ; preds = %173, %114
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %178

118:                                              ; preds = %115
  %119 = load %struct.sx_board*, %struct.sx_board** %6, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @mc_type, align 4
  %122 = call i32 @sx_read_module_byte(%struct.sx_board* %119, i32 %120, i32 %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* @SX_DEBUG_PROBE, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load i32, i32* @SX_DEBUG_PROBE, align 4
  %128 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %129

129:                                              ; preds = %167, %118
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %170

133:                                              ; preds = %129
  %134 = load %struct.sx_board*, %struct.sx_board** %6, align 8
  %135 = call i64 @IS_SX_BOARD(%struct.sx_board* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %133
  %138 = load %struct.sx_board*, %struct.sx_board** %6, align 8
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %9, align 4
  %141 = mul nsw i32 %140, 2
  %142 = add nsw i32 %139, %141
  %143 = load i32, i32* @mc_chan_pointer, align 4
  %144 = call i32 @sx_read_module_word(%struct.sx_board* %138, i32 %142, i32 %143)
  %145 = load %struct.sx_port*, %struct.sx_port** %7, align 8
  %146 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  br label %155

147:                                              ; preds = %133
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 256
  %150 = load i32, i32* %9, align 4
  %151 = mul nsw i32 768, %150
  %152 = add nsw i32 %149, %151
  %153 = load %struct.sx_port*, %struct.sx_port** %7, align 8
  %154 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %147, %137
  %156 = load i32, i32* @SX_DEBUG_PROBE, align 4
  %157 = load %struct.sx_port*, %struct.sx_port** %7, align 8
  %158 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %156, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  %163 = load %struct.sx_port*, %struct.sx_port** %7, align 8
  %164 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 4
  %165 = load %struct.sx_port*, %struct.sx_port** %7, align 8
  %166 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %165, i32 1
  store %struct.sx_port* %166, %struct.sx_port** %7, align 8
  br label %167

167:                                              ; preds = %155
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %9, align 4
  br label %129

170:                                              ; preds = %129
  %171 = load i32, i32* @SX_DEBUG_PROBE, align 4
  %172 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %173

173:                                              ; preds = %170
  %174 = load %struct.sx_board*, %struct.sx_board** %6, align 8
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @read_sx_word(%struct.sx_board* %174, i32 %175)
  %177 = and i32 %176, 32767
  store i32 %177, i32* %10, align 4
  br label %115

178:                                              ; preds = %115
  br label %179

179:                                              ; preds = %178, %113
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %8, align 4
  br label %92

182:                                              ; preds = %92
  %183 = call i32 (...) @func_exit()
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %182, %19
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @func_enter(...) #1

declare dso_local %struct.sx_port* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @sx_dprintk(i32, i8*, ...) #1

declare dso_local i32 @tty_port_init(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sx_read_module_byte(%struct.sx_board*, i32, i32) #1

declare dso_local i64 @IS_SX_BOARD(%struct.sx_board*) #1

declare dso_local i32 @sx_read_module_word(%struct.sx_board*, i32, i32) #1

declare dso_local i32 @read_sx_word(%struct.sx_board*, i32) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
